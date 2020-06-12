#!/bin/bash

i3status | while :
do
#    read line
#    gmail=`perl gmail.pl`
    if ping -w 1 -c 1 8.8.8.8 >/dev/null 2>&1; then echo "NET: UP"; else echo "NET: DOWN"; fi
    i3status
#    echo "GMAIL $gmail | $line" || exit 1
done
