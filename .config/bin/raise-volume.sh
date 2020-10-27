#!/bin/sh

current=$(pacmd dump-volumes | awk 'NR==1{print $8}' | sed 's/\%//')

if [ $current -le 95 ]
then
       pactl set-sink-mute 0 false
       pactl set-sink-volume 0 +5%
fi
