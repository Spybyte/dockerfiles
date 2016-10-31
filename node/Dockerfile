FROM resin/rpi-raspbian:jessie 
MAINTAINER Spybyte <spybyte@online.de>

WORKDIR /root
ARG NODE_VER

RUN apt-get update  \
	&& apt-get -qy install curl \
		apt-utils \
		ca-certificates \
		python \
	&& curl -sL https://deb.nodesource.com/setup_$NODE_VER.x | /bin/bash -  \
	&& apt-get -y install nodejs \
	&& rm -rf /var/lib/apt/lists/*

CMD ["/usr/local/bin/node"]
