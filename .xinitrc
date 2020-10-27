#!/bin/sh
xrdb -merge "$HOME/.Xresources"

# start some nice programs
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# call the compositor
picom &

# autodetect and mount USB drives
udiskie &

# set the desktop background
xwallpaper --stretch $HOME/.config/images/wallpaper.png &

# Start bspwm
exec bspwm
