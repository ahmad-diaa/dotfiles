#!/bin/sh
i3lock --nofork                 \
    --ignore-empty-password	\
    --noinputtext="" \
    --linecolor=00000000        \
    --keyhlcolor=88c0d0ff       \
    --bshlcolor=d8dee9ff	\
    --separatorcolor=00000000   \
    --radius=60			\
    --indpos="100:950"		\
    \
    --insidevercolor=00000000	\
    --insidewrongcolor=00000000 \
    --insidecolor=00000000	\
    \
    --ringcolor=5e81acff        \
    --ringvercolor=a3be8cff     \
    --ringwrongcolor=bf616aff   \
    \
    --clock			\
    --timecolor=eceff4ff	\
    --timestr="%H:%M"		\
    --time-font="JetBrains Mono Nerd Font"	\
    --timesize=60		\
    --timepos="270:960"		\
    \
    --datecolor=d8dee9ff	\
    --datestr="%A, %d %B"	\
    --date-font="JetBrains Mono Nerd Font"	\
    --datesize=35		\
    --datepos="370:1000"	\
    \
    --veriftext=""		\
    --wrongtext=""		\
    \
    --indicator			\
    \
    --image=$HOME/.config/images/lock.jpg

