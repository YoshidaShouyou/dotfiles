#!/bin/sh

#Terminate already running bar instance
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bars
polybar bar

echo "Bars launched..."

