set(COMPONENT_SRCS 
    "canbus.c"
    "fuel_gauge.c"
    "indicator_lights.c"
    "main.cpp"
    "simpbms_comms.c"
    "speedometer_gauge.c"
    "tachometer_gauge.c"
    "temp_gauge.cpp"
    "wifi_controls.cpp"
)
set(COMPONENT_ADD_INCLUDEDIRS
    "include"
)

register_component()
