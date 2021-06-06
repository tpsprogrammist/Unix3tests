#!/bin/bash

sleep $RANDOM &
V_BGJOB_ID=$!

sleep 10
if ps ${V_BGJOB_ID}; then
    # ps command is executed. 
    # In case when process with certain PID exists, zero code is returned

    echo "Background job (${V_BGJOB_ID}) is still running, terminating..."
    kill ${V_BGJOB_ID}
fi