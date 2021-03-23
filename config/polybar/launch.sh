#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar -rq bar &
polybar -rq float &
polybar -rq float2 &
polybar -rq another_bar_lol &
