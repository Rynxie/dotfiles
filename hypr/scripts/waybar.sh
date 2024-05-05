#!/bin/bash

if pgrep -x "waybar" > /dev/null
then
    pkill waybar
    waybar &
else
    waybar &
fi
