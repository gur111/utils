#!/usr/bin/env bash

UPLOAD=
DOWNLOAD=
IPHONE=

SPEED="$(ssh -o NoHostAuthenticationForLocalhost=yes -o UseKeychain=yes root@localhost -p22022 'bmon -B -U -o ascii:quitafter=2 -p en0 | cut -w -f 3 | tail -n 1')"

sketchybar -m --set network_iphone icon.drawing=on icon="$IPHONE$DOWNLOAD"     \
                            label="$SPEED" \
                            background.color=0xffcb6ffc \
                            icon.color=0xffffdf3d


# if [ "$AIRPORT" = "Off" ] || [ -z "$LABEL" ]; then
#     echo "showing none"
#     sketchybar -m --set network icon.drawing=off
# elif
# if [ "$UP_SPEED" -gt "$DOWN_SPEED" ]; then
#     sketchybar -m --set network icon.drawing=on icon=$UPLOAD \
#                                 background.color=0xffcb6ffc  \
#                                 icon.color=0xffffdf3d
#     if [ "$UP_SPEED" -gt "999" ]; then
#         SPEED=$(echo $UP_SPEED | awk '{ printf "%.1f MB/s", $1 / 1000}')
#     else
#         SPEED=$(echo $UP_SPEED | awk '{ printf "%.1f KB/s", $1}')
#     fi
# else
#     sketchybar -m --set network icon.drawing=on icon=$DOWNLOAD \
#                                 background.color=0xff1b83de  \
#                                 icon.color=0xff42ff42
#     if [ "$DOWN_SPEED" -gt "999" ]; then
#         SPEED=$(echo $DOWN_SPEED | awk '{ printf "%.1f MB/s", $1 / 1000}')
#     else
#         SPEED=$(echo $DOWN_SPEED | awk '{ printf "%.1f KB/s", $1}')
#     fi
# fi
# sketchybar -m --set network label="$SPEED"

