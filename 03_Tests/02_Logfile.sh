#!/bin/bash
V_APP_LOG="logs/application.log"
if grep -q ";FATAL;" ${V_APP_LOG}; then
    # grep -q returns 0 when any matches found,
    # that is, log file contains any FATAL entries
    
	echo "${V_APP_LOG}: A critical issue detected!"
elif grep -q ";WARN;" ${V_APP_LOG}; then
	# no FATAL entries, but some warnings exist

    echo "${V_APP_LOG}: Application seems to be unstable."
else
	# no FATALs, no WARNs

    echo "${V_APP_LOG}: All green!"
fi