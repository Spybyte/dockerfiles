# rpi-homebridge

Basic Raspberry Pi homebridge installation without any plugins.
You can use this image to add plugins on top of it.

Example:

<code>
FROM spybyte/rpi-homebridge:latest
MAINTAINER Spybyte <spybyte@online.de>

EXPOSE 2001 5353 9090 51826

RUN npm install -g --unsafe-perm homebridge-homematic \
	&& mkdir -p ~/.homebridge

ADD config.json ~/.homebridge/config.json
</code>

Usage: docker run -d --name HomeBridge --net=host --restart=always -P -v /home/pi/.homebridge:/root/.homebridge spybyte/rpi-homebridge:latest
