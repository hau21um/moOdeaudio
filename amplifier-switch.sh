#!/bin/bash
# Put me /usr/bin/
# User config
delay=5 # Time in seconds the script sleeps after detecting.
relay=23 # GPIO pin the relay is on
state=0 # State of music: increase until $delay: 0 music is running

# Setting up GPIO
systemctl is-system-running --wait
raspi-gpio set $relay op

# check audio
while [ true ]; do
  if grep -q "state: RUNNING" /proc/asound/card*/pcm*/sub*/status ; then # music is on
     raspi-gpio set $relay dh
     if [[ $state != 0 ]]; then
       echo "*** POWER ON AMP ***"     
     fi
     state=0
  else
    let "state++"
    #echo state=$state
  fi

  if [[ $state == $delay ]]; then
    raspi-gpio set $relay dl
    echo "*** POWER OFF AMP ***"
  fi
  sleep 1
done
