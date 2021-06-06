#!/bin/bash

V_OCT="024"	# octal representation of 20
V_HEX="0x14"	# hex representation of 20

if [[ ${V_OCT} == ${V_HEX} ]]; then
    # string comparison
    
    echo "String values ${V_OCT} and ${V_HEX} are equal"
fi
if [[ ${V_OCT} -eq ${V_HEX} ]]; then
    # numeric comparison

    echo "Numeric values ${V_OCT} and ${V_HEX} are equal"
fi