FROM spybyte/rpi-homebridge:latest
MAINTAINER Spybyte <spybyte@online.de>

EXPOSE 2001 5353 9090 51826

RUN npm install -g --unsafe-perm homebridge-homematic \
	&& mkdir -p /root/.homebridge

COPY config.json /root/.homebridge/config.json


