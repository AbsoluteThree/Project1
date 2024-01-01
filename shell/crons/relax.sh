#!/bin/bash 

#Export DISPLAY 

export DISPLAY=:1

#Call Gnome EOG 
/usr/bin/eog -f /home/ubuntu/图片/relax.jpg & 

#Time to display 
sleep 10

killall eog 