#!/bin/bash

VAR1=10
VAR2=7

# use proper comparison operators, otherwise...
if [ "${VAR1}" -gt "${VAR2}" ]; then	# numeric

    echo "${VAR1} is greater than ${VAR2} as integer."
fi
if [ "${VAR1}" \> "${VAR2}" ]; then		# as strings
    # why the comparison operator is escaped?

    echo "${VAR1} is greater than ${VAR2} as string."
fi