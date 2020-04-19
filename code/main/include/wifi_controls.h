
#include "lwip/netif.h"

#include <esp_http_server.h>

#include <sys/param.h>  // For MIN/MAX(a, b)
#include <string.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/event_groups.h"
#include "esp_system.h"
#include "esp_wifi.h"
#include "esp_event.h"
#include "esp_log.h"
#include "nvs_flash.h"

#include "lwip/err.h"
#include "lwip/sys.h"

#include "cJSON.h"

#include "temp_gauge.h"
#include "indicator_lights.h"

#ifndef E28_CLUSTER_WIFI_CONTROLS
#define E28_CLUSTER_WIFI_CONTROLS

#define EXAMPLE_ESP_WIFI_SSID      CONFIG_ESP_WIFI_SSID
#define EXAMPLE_ESP_WIFI_PASS      CONFIG_ESP_WIFI_PASSWORD
#define EXAMPLE_ESP_MAXIMUM_RETRY  CONFIG_ESP_MAXIMUM_RETRY

class WifiControls {

    public:
        WifiControls();
        void connectToStation();
        void setupServer();
        void setTempGauge(TempGauge * tempGauge);

    private:
        static esp_err_t get_uri_handler(httpd_req_t* req);
        static esp_err_t get_indicator_config(httpd_req_t* req);
        static esp_err_t get_indicator_state(httpd_req_t* req);
        static esp_err_t set_temp_gauge_uri_handler(httpd_req_t* req);

        /* URI handler structure for GET /uri */
        static httpd_uri_t uri_get;
        /*{
            .uri      = "/uri",
            .method   = HTTP_GET,
            .handler  = WifiControls::get_uri_handler,
            .user_ctx = NULL
        };*/
        /* URI handler structure for GET /uri */
        static httpd_uri_t uri_get_indicator_config;
        /*{
            .uri      = "/uri",
            .method   = HTTP_GET,
            .handler  = WifiControls::get_uri_handler,
            .user_ctx = NULL
        };*/
        /* URI handler structure for GET /uri */
        static httpd_uri_t uri_get_indicator_state;
        /*{
            .uri      = "/uri",
            .method   = HTTP_GET,
            .handler  = WifiControls::get_uri_handler,
            .user_ctx = NULL
        };*/
        /* URI handler structure for POST /uri */
        static httpd_uri_t uri_post;
        /*{
            .uri      = "/uri",
            .method   = HTTP_POST,
            .handler  = WifiControls::get_uri_handler,
            .user_ctx = NULL
        };*/
        /* HTTP Handle */
        static httpd_handle_t webserver;
        TempGauge * tempGauge;
};

#endif