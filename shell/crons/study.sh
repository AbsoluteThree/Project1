#!/bin/bash 

#Export DISPLAY 
#使用root登录，echo $DISPLAY

export DISPLAY=:1

#Call Gnome EOG 
/usr/bin/eog -f /home/ubuntu/图片/study.jpg & 

#Time to display 
sleep 10

killall eog 