#!/bin/sh

URL="<REDDIT_URL>"
USERAGENT="polybar-scripts/notification-reddit:v1.0 u/soulprovidr"

notifications=$(curl -sf --user-agent "$USERAGENT" "$URL" | jq '.["data"]["children"] | length')

if [ -n "$notifications" ] && [ "$notifications" -gt 0 ]; then
    echo "%{F#CC3700}%{F-}  $notifications"
else
    echo "  0"
fi
