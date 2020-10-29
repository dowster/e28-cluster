#include "include/temp_gauge.h"

TempGauge::TempGauge(dac_channel_t channel)
{
    setup_temp_gauge(channel);
}

void TempGauge::setup_temp_gauge(dac_channel_t channel)
{
    temp_gauge_channel = channel;
    dac_output_enable(temp_gauge_channel);
    this->write_to_temp_gauge(0);
}

void TempGauge::write_to_temp_gauge(int position)
{
    ESP_LOGI("TEMP", "[T: %d]", position);
    this->position = position;
    dac_output_voltage(temp_gauge_channel, position);
}

int TempGauge::get_temp()
{
    return this->position;
}

dac_channel_t TempGauge::get_channel() 
{
    return temp_gauge_channel;
}