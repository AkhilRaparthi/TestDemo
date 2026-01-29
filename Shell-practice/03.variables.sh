#!/bin/bash/

STARTTIME=$(date +%s)

echo "Script excuted at: $STARTTIME"

sleep 3

ENDTIME=$(date +%s)

TOTALTIME=$((ENDTIME - STARTTIME))

echo "Time Taken: $TOTALTIME"