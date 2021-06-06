#!/bin/bash

V_FILE="/tmp/nonexistent.txt"

# Replacing -a and -o operators with a short-cirquit bash operators 
# && and || should help
if [ -f "{V_FILE}" ] && [ -n "$(cat ${V_FILE})" ]; then

    echo "File ${V_FILE} exists and is not empty"
fi

if [ ! -f "${V_FILE}" ] || [ -z "$(cat ${V_FILE})" ]; then

    echo "File ${V_FILE} is missing or empty"
fi