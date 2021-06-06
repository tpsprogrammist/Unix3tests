#!/bin/bash

read -p \
"Enter sorting mode: (fF)ailed, (tT)imedout, leave blank for default: "
V_MODE="default"

case "${REPLY}" in
    f|F|Failed|failed)
	V_MODE="failed"
	;;
    t|T|Timedout|timedout)
	V_MODE="timedout"
	;;
    "")
	echo "No sorting mode defined, using default one."
	;;
    *)		# the same as default
	echo "Invalid input, using default mode"
	;;
esac