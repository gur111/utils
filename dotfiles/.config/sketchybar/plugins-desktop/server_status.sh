#!/usr/bin/env sh

# Check if the server is up
SCRIPT_PATH=$(dirname "$0")

ADDRESS="mc.oftel.pw"

CMD="/usr/local/bin/python3 $SCRIPT_PATH/check_mc.py -H $ADDRESS"
# Set loading with proper icon and color
sketchybar --set server_status icon="" background.color=0xff8996ab label="󰍳"
# Get the status of the server with 3 second timeout
STATUS=$(gtimeout 4 $CMD)

# Show bad status if non 0 exit code and good status otherwise
if [ $? -ne 0 ]; then
    sketchybar --set server_status icon="" background.color=0xfffa1616 label="󰍳"
else
  PLAYER_COUNT=$($CMD | cut -f2 -d ":" | cut -f1 -d "/")
    sketchybar --set server_status icon="" background.color=0xff28bd50 label="󰍳 $PLAYER_COUNT"
fi

