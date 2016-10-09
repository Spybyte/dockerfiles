FROM resin/rpi-raspbian:jessie 
MAINTAINER Spybyte <spybyte@online.de>

RUN apt-get update && \  
    apt-get -qy install curl \
		apt-utils \
                build-essential python \
                ca-certificates

WORKDIR /root/  

RUN curl -sL https://deb.nodesource.com/setup_4.x | /bin/bash -

RUN apt-get update && apt-get -y install nodejs

CMD ["/usr/local/bin/node"]
