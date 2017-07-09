#!/bin/bash

# match first logitech bluetooth or g500 mouse/pointer

DEVICE=`xinput list | grep -e "Logitech BT" -e "Logitech G500" | grep -e "pointer" -m 1 | cut -d = -f 2 | cut -d [ -f 1`
echo "Found device at $DEVICE"


# current 
echo "Current button map for input device # $DEVICE"
xinput get-button-map $DEVICE

# swap thumb button with middle mouse button
# so now thumb button sends middle mouse to X (scrollwheel click now sends 10)
xinput set-button-map $DEVICE 1 10 3 4 5 6 7 8 9 2 11 12 13 14 15 16 17 18 19 20 21 22 23 24

echo "New button map for input device # $DEVICE"
xinput get-button-map $DEVICE
