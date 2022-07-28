#!/bin/bash

notify-send "Starting in 5"
sleep 5;
notify-send "Automation Started"

for i in {1..400}
do
   xdotool type --delay 2 "$1";xdotool key Return;sleep 1;echo "$i times"
done
