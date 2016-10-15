FROM spybyte/rpi-node:4LTS
MAINTAINER Spybyte <spybyte@online.de>

EXPOSE 5353 51826
WORKDIR /usr/local/homebridge

RUN apt-get -q update \
	&& apt-get install -qy \
    	git \
    	libavahi-compat-libdnssd-dev \
    	libasound2-dev \
    	avahi-daemon \
    	dbus \
    	python \
	&& npm install -g --unsafe-perm homebridge \
	&& mkdir -p /var/run/dbus \
	&& apt-get -qy remove \
		libavahi-compat-libdnssd-dev \
    	libasound2-dev \
	&& apt-get clean
		
ADD run.sh run.sh

RUN chmod +x run.sh

CMD ["./run.sh"]
