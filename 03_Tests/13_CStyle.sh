#!/bin/bash

V_LOGFILE="logs/application.log"
V_AMT_FATAL=$(grep -c ";FATAL;" "${V_LOGFILE}")
V_AMT_WARN=$(grep -c ";WARN;" "${V_LOGFILE}")

V_SUBJECT="All green"
if (( V_AMT_FATAL || V_AMT_WARN >= 5 )); then
# any FATAL or at least 5 WARN entries

	V_SUBJECT="A critical issue detected!"
elif (( V_AMT_WARN > 0 )); then	# any amount of WARN entries

	V_SUBJECT="Application seems to be unstable."
fi