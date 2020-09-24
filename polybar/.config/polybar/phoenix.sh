#!/bin/bash

LIST=$(ssh phoenix squeue -u a1687658 2> /dev/null | grep a1687658)
if [ -z "$LIST" ]
then
	exit
fi

RUNNING=$(echo $LIST | grep -sw "R" | wc -l)
QUEUED=$(echo $LIST | wc -l)
QUEUED=`expr $QUEUED - $RUNNING`

QUEUE_ICON=""
RUN_ICON=""

echo "$QUEUE_ICON:$QUEUED $RUN_ICON:$RUNNING"
