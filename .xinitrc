#!/bin/bash
export ANDROID_HOME=/opt/android-sdk
sxhkd &
redshift -l 51.364994:6.420531 &
xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation" 1
xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Button" 2
xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Timeout" 200
xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Axes" 6 7 4 5
setxkbmap -layout de  -option caps:escape -variant nodeadkeys & 
urxvtd --quiet --opendisplay --fork & 
xrdb /home/sven/.Xresources & 
feh --bg-fill /home/sven/img/haeuser.jpg & 
xset -dpms &
powersave &
nm-applet &
touchpadtoggle &
#blueman-applet & 
#udiskie & 
arandr-indicator &
exec bspwm
