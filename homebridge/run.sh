#!/bin/bash

rm -f /var/run/dbus/pid
rm -f /var/run/avahi-daemon//pid

sed -i "s/rlimit-nproc=3/#rlimit-nproc=3/" /etc/avahi/avahi-daemon.conf

dbus-daemon --system
avahi-daemon -D

sleep 5

homebridge
