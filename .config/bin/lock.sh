#!/bin/sh
i3lock --nofork                 \
    --ignore-empty-password	\
    --noinputtext="" \
    --linecolor=00000000        \
    --keyhlcolor=88c0d0ff       \
    --bshlcolor=d8dee9ff	\
    --separatorcolor=00000000   \
    --radius=40			\
    --indpos="100:680"		\
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
    --timesize=40		\
    --timepos="215:690"		\
    \
    --datecolor=d8dee9ff	\
    --datestr="%A, %d %B"	\
    --date-font="JetBrains Mono Nerd Font"	\
    --datesize=25		\
    --datepos="305:715"	\
    \
    --veriftext=""		\
    --wrongtext=""		\
    \
    --indicator			\
    \
    --image=$HOME/.config/images/lock.png

