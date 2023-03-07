#!/usr/bin/env bash

UPLOAD=
DOWNLOAD=


airport=$(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I)
AIRPORT=$(echo "$airport" | awk 'NR==1 {print $2}')
LABEL=$(echo "$airport" | grep -o "SSID: .*" | sed 's/^SSID: //')
UPDOWN=$(ifstat -i "en0" -b 0.1 1 | tail -n1)
DOWN=$(echo $UPDOWN | awk "{ print \$1 }" | cut -f1 -d ".")
UP=$(echo $UPDOWN | awk "{ print \$2 }" | cut -f1 -d ".")
DOWN_SPEED=$((DOWN/8))
UP_SPEED=$((UP/8))
SPEED=""

# if [ "$AIRPORT" = "Off" ] || [ -z "$LABEL" ]; then
#     echo "showing none"
#     sketchybar -m --set network icon.drawing=off
# elif
if [ "$UP_SPEED" -gt "$DOWN_SPEED" ]; then
    sketchybar -m --set network icon.drawing=on icon=$UPLOAD \
                                background.color=0xffcb6ffc  \
                                icon.color=0xffffdf3d
    if [ "$UP_SPEED" -gt "999" ]; then
        SPEED=$(echo $UP_SPEED | awk '{ printf "%.1f MB/s", $1 / 1000}')
    else
        SPEED=$(echo $UP_SPEED | awk '{ printf "%.1f KB/s", $1}')
    fi
else
    sketchybar -m --set network icon.drawing=on icon=$DOWNLOAD \
                                background.color=0xff1b83de  \
                                icon.color=0xff42ff42
    if [ "$DOWN_SPEED" -gt "999" ]; then
        SPEED=$(echo $DOWN_SPEED | awk '{ printf "%.1f MB/s", $1 / 1000}')
    else
        SPEED=$(echo $DOWN_SPEED | awk '{ printf "%.1f KB/s", $1}')
    fi
fi
sketchybar -m --set network label="$SPEED"

