#!/bin/sh

nitrogen --restore &
sxhkd &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
xmodmap .Xmodmap &
xset r rate 200 20 &
volumeicon &
xrdb .Xresources &
picom &
nm-applet --no-agent &
flameshot &
xfce4-power-manager &

dte(){
	dte="$(date)"
	echo -e "$dte"
}

batt0(){
	batt0="$(./.config/my_scripts/battery0.sh)"
	echo -e "$batt0"
}

batt1(){
	batt1="$(./.config/my_scripts/battery1.sh)"
	echo -e "$batt1"
}

while true; do
	xsetroot -name "$(dte) | $(batt0) | $(batt1)"
   sleep 1s    # Update time every minute
done &

exec dwm
