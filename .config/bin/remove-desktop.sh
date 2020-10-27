#!/bin/sh

reserved_desktops=3
for i in $(seq 1 $reserved_desktops); 
do
  if [[ $(bspc query -D -d focused) -eq $(bspc query -D -d ^$i.local) ]]
    then
          exit 0
  fi
done

bspc desktop -f prev; bspc desktop last --remove
