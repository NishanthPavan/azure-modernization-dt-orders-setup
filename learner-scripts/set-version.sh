#!/bin/bash

SERVICE=$1
NEW_VERSION=$2

source ./_learner-scripts.lib
./set-version.sh $SERVICE $NEW_VERSION
