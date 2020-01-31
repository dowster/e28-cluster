set(COMPONENT_SRCS "main.c" 
                   "fuel_gauge.c"
                   "temp_gauge.c"
                   "speedometer_gauge.c"
                   "tachometer_gauge.c"
                   "indicator_lights.c"
                    "simpbms_comms.c" )
set(COMPONENT_ADD_INCLUDEDIRS ".")

register_component()
