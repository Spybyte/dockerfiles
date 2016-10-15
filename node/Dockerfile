FROM resin/rpi-raspbian:jessie 
MAINTAINER Spybyte <spybyte@online.de>

WORKDIR /root

RUN apt-get update  \
	&& apt-get -qy install curl \
		apt-utils \
		build-essential  \
		python \
		ca-certificates \
	&& curl -sL https://deb.nodesource.com/setup_4.x | /bin/bash -  \
	&& apt-get -y install nodejs

CMD ["/usr/local/bin/node"]
