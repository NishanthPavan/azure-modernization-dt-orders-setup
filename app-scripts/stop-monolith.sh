#!/bin/bash

if ! [ $(id -u) = 0 ]; then
   echo "ERROR: script must be run as root or with sudo"
   exit 1
fi

APP_SCRIPTS_PATH=/home/workshop/azure-dt-orders/app-scripts

echo "*** Stopping Monolith ***"
sudo docker-compose -f "$APP_SCRIPTS_PATH/docker-compose-monolith.yaml" down

echo "*** Stopping Monolith Done. ***"