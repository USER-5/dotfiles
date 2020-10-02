#!/bin/bash
pidof picom > /dev/null
while [[ $? -ne 0 ]]
do
	picom --experimental-backends -b
	sleep 2
	pidof picom > /dev/null
done
