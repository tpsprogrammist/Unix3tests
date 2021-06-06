#!/bin/bash

P_MAX="$1"
VALUE="$(grep -c ";WARN;" logs/application.log)"

if [ "${P_MAX}" -gt "0" ] && [ "${VALUE}" -ge "${P_MAX}" ]; then
	# the same as: if ( P_MAX > 0 && VALUE >= P_MAX )

    # that is, if threshold value is set (i.e. greater than 0)
    # and amount of WARN entries exceeds the threshold
    
    echo "Value of ${VALUE} exceeds the threshold allowed"
fi