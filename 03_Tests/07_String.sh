#!/bin/bash

V_PROFILE="default"
read -p "Enter profile name, leave blank for default: "

if [ -z "${REPLY}" ] || [ "${REPLY}" == "default" ]; then
    # if "default" or no value is specified
    
    echo "Applying default configuration..."
else

    V_PROFILE="${REPLY}"
    echo "Applying configuration: ${V_PROFILE}"
fi