#!/bin/bash

V_FILE="/tmp/nonexistent.txt"

# does it make sense to invoke the cat command
# if the file does not exist?
if [ -f "{V_FILE}" -a -n "$(cat ${V_FILE})" ]; then

    echo "File ${V_FILE} exists and is not empty"
fi

if [ ! -f "${V_FILE}" -o -z "$(cat ${V_FILE})" ]; then

    echo "File ${V_FILE} is missing or empty"
fi