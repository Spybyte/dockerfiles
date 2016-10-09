#!/bin/bash

if [ -f .install_host ];
then
	sed -i "s/$(cat .install_host)/$(hostname)/g" iobroker-data/objects.json
	[ -n "$IOBROKER_HOST" ] && sed -i "s/127.0.0.1/$IOBROKER_HOST/g" iobroker-data/iobroker.json
	rm .install_host
fi

./iobroker start

while true; do sleep 60000; done

