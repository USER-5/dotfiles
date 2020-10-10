#!/bin/bash

LIST=`ssh phoenix squeue -u a1687658 2> /dev/null | grep a1687658`
if [ -z "$LIST" ]
then
	exit
fi

RUNNING=$(echo "$LIST" | grep -sw "R" | wc -l)
QUEUED=$(echo "$LIST" | wc -l)
QUEUED=`expr $QUEUED - $RUNNING`

QUEUE_ICON=""
RUN_ICON=""
OUTPUT=""
if [[ $QUEUED ~= "0" ]]; then
	OUTPUT="$QUEUE_ICON:$QUEUED"
	if [[ $RUNNING ~= "0" ]]; then
		OUTPUT="$OUTPUT "
	fi
fi
if [[ $RUNNING ~= "0" ]]; then
	OUTPUT="$OUTPUT$RUN_ICON:$RUNNING"
fi
fi
echo "$QUEUE_ICON:$QUEUED $RUN_ICON:$RUNNING"
echo "$QUEUE_ICON:$QUEUED $RUN_ICON:$RUNNING"
