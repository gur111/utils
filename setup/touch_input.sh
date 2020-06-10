#!/bin/bash

# To find out the outputs
xinput | grep pointer
echo "Enter device:"
read dev

# To find out the devices
xrandr | grep " connected" | cut -d" " -f1
echo "Enter output:"
read out
# To map pen/touch to device
xinput map-to-output $dev $out
