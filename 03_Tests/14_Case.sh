#!/bin/bash

case "$1" in
	"te*")		# string comparison, "te*" only
		echo "First match (\"te*\")"
		;;
    te*)		# everything, which starts with te
		echo "Second match (te*)"
		;;
    *st)		# everything, which ends with st
		echo "Third match (*st)"
		;;
    *)			# a universal template
		echo "Fourth match (default)"
		;;
esac