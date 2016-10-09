FROM spybyte/rpi-homebridge:latest
MAINTAINER Spybyte <spybyte@online.de>

RUN apt-get update

RUN npm install -g --unsafe-perm homebridge-homematic

RUN mkdir -p .homebridge

ADD config.json .homebridge/config.json

EXPOSE 2001 5353 9090 51826

