#!/bin/bash

read -p "Enter file name: " V_APP_LOG

if test -z "${V_APP_LOG}"; then
	# the same as: if ( V_APP_LOG == "" )

	echo "Empty filename provided, using default one..."
	V_APP_LOG="logs/flight.log"
fi

if [ ! -f "${V_APP_LOG}" ]; then
	# the same as: if ( !File.exists(V_APP_LOG) ) 

	echo "File ${V_APP_LOG} not found!"
	exit 1		
fi

# here comes the processing...