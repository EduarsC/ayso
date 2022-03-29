#!/usr/bin/bash

# create the 3 terminals that will contain the scripts
# and identify each one inside /dev/pts/
# these three terminals run in parallel, in a way simulating multitasking

# each one of this terminals make a determinated action
# and show a determinated information

# this terminal show a animation all the time with a inifinite loop
xfce4-terminal --geometry 87x23+1+1390 --command ./animation.sh # /dev/pts/1

# this terminal waits all the time. 
# In this one, the main script shows most of the information
xfce4-terminal --geometry 80x100+720+0 -H --command read       # /dev/pts/2

# this terminal run the menu and the main script
xfce4-terminal --geometry 87x20+1+1    --command ./bot_.sh      # /dev/pts/3

# close the first terminal that runs everything
kill -9 $PPID
