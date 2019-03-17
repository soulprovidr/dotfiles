#!/bin/sh

echo "Killing existing process...";
killall polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar top-0 &
polybar top-1 &

echo "Bars launched."
