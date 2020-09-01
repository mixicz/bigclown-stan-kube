#!/bin/bash

# some sane default values for configuration variables 
# not using localhost as we know for sure there is no MQTT broker there
MQTT_HOST=${MQTT_HOST:-mosquitto}
MQTT_PORT=${MQTT_PORT:-1883}

DEV=( $(bcg devices | grep USB) )

if [ -z "${DEV[0]}" ]
then
    echo "No BigClown dongle found!"
    exit 1
fi

if [ "${#DEV[*]}" -gt 1 ]
then
    echo "WARNING: Multiple BigClown dongles found, only first one is used: ${DEV[@]}"
fi

exec bcg --device "${DEV[0]}" --mqtt-host "$MQTT_HOST" --mqtt-port "$MQTT_PORT" $PARAMS
