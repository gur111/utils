#!/usr/bin/env sh

INFO=$(osascript -e 'output volume of (get volume settings)')


# case ${INFO} in
#   [1-9][0-9]|100)
#     ICON=""
#     ICON_PADDING_RIGHT=5
#     ;;
#   [1-9])
#     ICON=""
#     ICON_PADDING_RIGHT=12
#     ;;
#   *)
#     INFO=0
#     ICON=""
#     ICON_PADDING_RIGHT=22
# esac

case ${INFO} in
  100)
    ICON=""
    ICON_PADDING_RIGHT=0
    ;;
  [4-9][0-9])
    ICON=""
    ICON_PADDING_RIGHT=7
    ;;
  [2-3][0-9])
    ICON=""
    ICON_PADDING_RIGHT=12
    ;;
  1[0-9])
    ICON=""
    ICON_PADDING_RIGHT=17.5
    ;;
  [1-9])
    ICON=""
    ICON_PADDING_RIGHT=24
    ;;
  0)
    ICON="婢"
    ICON_PADDING_RIGHT=18
    ;;
  *) ICON="ﱝ"
    ICON_PADDING_RIGHT=20
    INFO="?"
esac

sketchybar --set $NAME icon=$ICON icon.padding_left=2 icon.padding_right=$ICON_PADDING_RIGHT label=$INFO
