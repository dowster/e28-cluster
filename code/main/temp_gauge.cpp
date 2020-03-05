#include "include/temp_gauge.h"

TempGauge::TempGauge(dac_channel_t channel)
{
    setup_temp_gauge(channel);
}

void TempGauge::setup_temp_gauge(dac_channel_t channel)
{
    temp_gauge_channel = channel;
    dac_output_enable(temp_gauge_channel);
}

void TempGauge::write_to_temp_gauge(int position)
{
    ESP_LOGI("TEMP", "[T: %d]", position);
    dac_output_voltage(temp_gauge_channel, position);
}

dac_channel_t TempGauge::get_channel() 
{
    return temp_gauge_channel;
}