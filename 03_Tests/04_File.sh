#!/bin/bash

V_LOCK="/tmp/application.lock"
if [ -f "${V_LOCK}" ] && [ ! -O "${V_LOCK}" ];  then
    # file exists and we are not its owner
    
    echo "Resource is locked by another user"
    echo 1
fi

V_BACKUPDIR="/bin/backup"
if [ ! -d "${V_BACKUPDIR}" ] || [ ! -w "${V_BACKUPDIR}" ]; then
    # is not a directory or there is no write permission set
    
    echo "${V_BACKUPDIR} cannot be used as backup directory"
    exit 1
fi