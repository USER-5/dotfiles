#!/usr/bin/env bash


# Get monitors
HORIZ=$(xrandr -q | grep " connected.*2560x1440" | cut -d " " -f1)
VERT=$(xrandr -q | grep " connected.*1440x2560" | cut -d " " -f1)
# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 

echo "---" | tee -a /tmp/polybar-horiz.log /tmp/polybar-vert.log

# Launch bars
MONITOR=$HORIZ polybar --reload horiz >> /tmp/polybar-horiz.log 2>&1 & disown
MONITOR=$VERT polybar --reload vert >> /tmp/polybar-vert.log 2>&1 & disown

echo "Bars launched..."
