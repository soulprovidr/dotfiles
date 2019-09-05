#!/bin/sh

echo "Killing existing process...";
killall polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar main &
polybar secondary &

echo "Bars launched."
