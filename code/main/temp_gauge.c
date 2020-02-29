#include "include/temp_gauge.h"

static dac_channel_t temp_gauge_channel = -1;

void setup_temp_gauge(dac_channel_t channel)
{
    temp_gauge_channel = channel;
    dac_output_enable(temp_gauge_channel);
}

void write_to_temp_gauge(int position)
{
    ESP_LOGI("TEMP", "[T: %d]", position);
    dac_output_voltage(temp_gauge_channel, position);
}