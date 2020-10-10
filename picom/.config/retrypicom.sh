#!/bin/bash
pidof polybar > /dev/null
while [[ $? -ne 0 ]]
do
	pidof polybar > /dev/null
done
picom --experimental-backends -b
sleep 1
pidof picom > /dev/null
while [[ $? -ne 0 ]]
do
	sleep 2
	picom --experimental-backends -b
	pidof picom > /dev/null
done
