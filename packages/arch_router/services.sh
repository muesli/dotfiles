#!/bin/bash

PACKAGES=("${PACKAGES[@]}"
    # Databases
    "influxdb"
    # Grafana
    "grafana-bin"
    # MQTT
    "mosquitto"
    # mqttbridge
    "python-influxdb" "python-paho-mqtt"
)
