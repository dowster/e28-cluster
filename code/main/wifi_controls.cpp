#include "include/wifi_controls.h"



/* URI handler structure for GET /uri */
httpd_uri_t WifiControls::uri_get = { "/temp", HTTP_GET, WifiControls::get_uri_handler, NULL};
httpd_uri_t WifiControls::uri_get_indicator_config = { "/indicators", HTTP_GET, WifiControls::get_indicator_config, NULL};
httpd_uri_t WifiControls::uri_get_indicator_state = { "/indicators/*", HTTP_GET, WifiControls::get_indicator_state, NULL};

/* URI handler structure for POST /uri */
httpd_uri_t WifiControls::uri_post = { "/temp", HTTP_PUT, WifiControls::set_temp_gauge_uri_handler, NULL};

httpd_handle_t WifiControls::webserver;

/* FreeRTOS event group to signal when we are connected*/
static EventGroupHandle_t s_wifi_event_group;
static int s_retry_num = 0;
static WifiControls * wifi_context;

WifiControls::WifiControls() 
{
    wifi_context = this;
}

/* The event group allows multiple bits for each event, but we only care about two events:
 * - we are connected to the AP with an IP
 * - we failed to connect after the maximum amount of retries */
#define WIFI_CONNECTED_BIT BIT0
#define WIFI_FAIL_BIT      BIT1

static const char *TAG = "wifi station";
extern "C" {
static void event_handler(void* arg, esp_event_base_t event_base,
                                int32_t event_id, void* event_data)
{
    if (event_base == WIFI_EVENT && event_id == WIFI_EVENT_STA_START) {
        esp_wifi_connect();
    } else if (event_base == WIFI_EVENT && event_id == WIFI_EVENT_STA_DISCONNECTED) {
        if (s_retry_num < EXAMPLE_ESP_MAXIMUM_RETRY) {
            esp_wifi_connect();
            s_retry_num++;
            ESP_LOGI(TAG, "retry to connect to the AP");
        } else {
            xEventGroupSetBits(s_wifi_event_group, WIFI_FAIL_BIT);
        }
        ESP_LOGI(TAG,"connect to the AP fail");
    } else if (event_base == IP_EVENT && event_id == IP_EVENT_STA_GOT_IP) {
        ip_event_got_ip_t* event = (ip_event_got_ip_t*) event_data;
        ESP_LOGI(TAG, "got ip:" IPSTR, IP2STR(&event->ip_info.ip));
        s_retry_num = 0;
        xEventGroupSetBits(s_wifi_event_group, WIFI_CONNECTED_BIT);
    }
}
}
void WifiControls::connectToStation() 
{
    s_wifi_event_group = xEventGroupCreate();

    ESP_LOGI(TAG, "netif_init()");
    ESP_ERROR_CHECK(esp_netif_init());

    ESP_LOGI(TAG, "esp_event_loop_create_default()");
    ESP_ERROR_CHECK(esp_event_loop_create_default());
    esp_netif_create_default_wifi_sta();

    ESP_LOGI(TAG, "WIFI_INIT_CONFIG_DEFAULT()");
    wifi_init_config_t cfg = WIFI_INIT_CONFIG_DEFAULT();
    ESP_LOGI(TAG, "esp_wifi_init(&cfg)");
    ESP_ERROR_CHECK(esp_wifi_init(&cfg));

    ESP_LOGI(TAG, "esp_event_handler_register(WIFI_EVENT, ESP_EVENT_ANY_ID, &event_handler, NULL)");
    ESP_ERROR_CHECK(esp_event_handler_register(WIFI_EVENT, ESP_EVENT_ANY_ID, &event_handler, NULL));
    ESP_LOGI(TAG, "esp_event_handler_register(IP_EVENT, IP_EVENT_STA_GOT_IP, &event_handler, NULL)");
    ESP_ERROR_CHECK(esp_event_handler_register(IP_EVENT, IP_EVENT_STA_GOT_IP, &event_handler, NULL));

    ESP_LOGI(TAG, "wifi_config");
    wifi_config_t wifi_config = {
        .sta = {
            EXAMPLE_ESP_WIFI_SSID,
            EXAMPLE_ESP_WIFI_PASS
        }
    };
    ESP_LOGI(TAG, "esp_wifi_set_mode(WIFI_MODE_STA)");
    ESP_ERROR_CHECK(esp_wifi_set_mode(WIFI_MODE_STA) );
    ESP_LOGI(TAG, "esp_wifi_set_config(ESP_IF_WIFI_STA, &wifi_config)");
    ESP_ERROR_CHECK(esp_wifi_set_config(ESP_IF_WIFI_STA, &wifi_config) );
    ESP_LOGI(TAG, "esp_wifi_start()");
    ESP_ERROR_CHECK(esp_wifi_start());

    ESP_LOGI(TAG, "wifi_init_sta finished.");

    /* Waiting until either the connection is established (WIFI_CONNECTED_BIT) or connection failed for the maximum
     * number of re-tries (WIFI_FAIL_BIT). The bits are set by event_handler() (see above) */
    EventBits_t bits = xEventGroupWaitBits(s_wifi_event_group,
            WIFI_CONNECTED_BIT | WIFI_FAIL_BIT,
            pdFALSE,
            pdFALSE,
            portMAX_DELAY);

    /* xEventGroupWaitBits() returns the bits before the call returned, hence we can test which event actually
     * happened. */
    if (bits & WIFI_CONNECTED_BIT) {
        ESP_LOGI(TAG, "connected to ap SSID:%s password:%s",
                 EXAMPLE_ESP_WIFI_SSID, EXAMPLE_ESP_WIFI_PASS);
    } else if (bits & WIFI_FAIL_BIT) {
        ESP_LOGI(TAG, "Failed to connect to SSID:%s, password:%s",
                 EXAMPLE_ESP_WIFI_SSID, EXAMPLE_ESP_WIFI_PASS);
    } else {
        ESP_LOGE(TAG, "UNEXPECTED EVENT");
    }

    ESP_ERROR_CHECK(esp_event_handler_unregister(IP_EVENT, IP_EVENT_STA_GOT_IP, &event_handler));
    ESP_ERROR_CHECK(esp_event_handler_unregister(WIFI_EVENT, ESP_EVENT_ANY_ID, &event_handler));
    vEventGroupDelete(s_wifi_event_group);
}

void WifiControls::setupServer() 
{
    /* Generate default configuration */
    httpd_config_t config = HTTPD_DEFAULT_CONFIG();

    config.uri_match_fn = httpd_uri_match_wildcard;

    /* Start the httpd server */
    if (httpd_start(&(webserver), &config) == ESP_OK) {
        /* Register URI handlers */
        httpd_register_uri_handler(webserver, &uri_get);
        httpd_register_uri_handler(webserver, &uri_get_indicator_config);
        httpd_register_uri_handler(webserver, &uri_get_indicator_state);
        httpd_register_uri_handler(webserver, &uri_post);
    }
}

char get_indicator_config_resp[2048];
esp_err_t WifiControls::get_indicator_config(httpd_req_t* req)
{
    memset(&get_indicator_config_resp, 0, sizeof(get_indicator_config_resp));

    /* Send a simple response */
    cJSON * array = cJSON_CreateArray();

    /**
     *  TODO: Grab array size dynamically. Can probably wait until there are more than one
     *       config array availble to use. 
     */
    int array_size = 14;
    for (int indicator_cursor = 0; indicator_cursor < array_size; indicator_cursor++) 
    {
        cJSON * object = cJSON_CreateObject();
        cJSON_AddNumberToObject(object, "pin", e30_indicators[indicator_cursor].mcp23017_pin);
        cJSON_AddStringToObject(object, "name", e30_indicators[indicator_cursor].name);
        cJSON_AddBoolToObject(object, "state", indicator_get_state(e30_indicators[indicator_cursor].mcp23017_pin));
        cJSON_AddItemToArray(array, object);
    }

    cJSON_PrintPreallocated(array, get_indicator_config_resp, sizeof(get_indicator_config_resp), false);
    cJSON_Delete(array);
    httpd_resp_send(req, get_indicator_config_resp, strlen(get_indicator_config_resp));
    return ESP_OK;
}

esp_err_t WifiControls::get_indicator_state(httpd_req_t* req)
{
    /* Send a simple response */
    char resp[50];
    int pin = 0;
    sscanf (req->uri,"/indicators/%d",&pin);
    cJSON * json = cJSON_CreateObject();
    cJSON_AddBoolToObject(json, "state", indicator_get_state(pin));
    cJSON_PrintPreallocated(json, resp, sizeof(resp), false);
    cJSON_Delete(json);
    httpd_resp_send(req, resp, strlen(resp));
    return ESP_OK;
}

esp_err_t WifiControls::get_uri_handler(httpd_req_t* req)
{
    /* Send a simple response */
    char resp[50];
    int temp = wifi_context->tempGauge->get_temp();
    cJSON * json = cJSON_CreateObject();
    cJSON_AddNumberToObject(json, "temp", temp);
    cJSON_PrintPreallocated(json, resp, sizeof(resp), false);
    cJSON_Delete(json);
    httpd_resp_send(req, resp, strlen(resp));
    return ESP_OK;
}

esp_err_t WifiControls::set_temp_gauge_uri_handler(httpd_req_t* req)
{
    /* Destination buffer for content of HTTP POST request.
     * httpd_req_recv() accepts char* only, but content could
     * as well be any binary data (needs type casting).
     * In case of string data, null termination will be absent, and
     * content length would give length of string */
    char content[100];

    /* Truncate if content length larger than the buffer */
    size_t recv_size = MIN(req->content_len, sizeof(content));

    int ret = httpd_req_recv(req, content, recv_size);
    if (ret <= 0) {  /* 0 return value indicates connection closed */
        /* Check if timeout occurred */
        if (ret == HTTPD_SOCK_ERR_TIMEOUT) {
            /* In case of timeout one can choose to retry calling
             * httpd_req_recv(), but to keep it simple, here we
             * respond with an HTTP 408 (Request Timeout) error */
            httpd_resp_send_408(req);
        }
        /* In case of error, returning ESP_FAIL will
         * ensure that the underlying socket is closed */
        return ESP_FAIL;
    }

    cJSON *json = cJSON_Parse(content);
    cJSON *tempObject = cJSON_GetObjectItem(json, "temp");

    wifi_context->tempGauge->write_to_temp_gauge(tempObject->valueint);
    cJSON_Delete(json);

    /* Send a simple response */
    const char resp[] = "Temp Gauge Updated";
    httpd_resp_send(req, resp, strlen(resp));
    return ESP_OK;
}

void WifiControls::setTempGauge(TempGauge * tempGauge) 
{
    this->tempGauge = tempGauge;
    wifi_context->tempGauge = tempGauge;
}