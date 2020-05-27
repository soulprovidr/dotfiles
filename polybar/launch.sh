#!/bin/sh

echo "Killing existing process...";
killall polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar bspwm-1 &
polybar bspwm-2 &
# polybar xwindow-1 &

echo "Bars launched."
