FROM spybyte/rpi-node:6LTS
MAINTAINER Spybyte <spybyte@online.de>

EXPOSE 5353 51826
WORKDIR /usr/local/homebridge

RUN apt-get -q update \
	&& apt-get install -qy \
		avahi-daemon \
		build-essential \
    	dbus \
    	git \
    	libavahi-compat-libdnssd-dev \
    	libasound2-dev \
	&& npm install -g --unsafe-perm homebridge \
	&& mkdir -p /var/run/dbus \
	&& apt-get clean \
	&& apt-get autoremove \
	&& apt-get remove --purge build-essential \
	&& rm -rf /var/lib/apt/lists/*
		
COPY run.sh run.sh

RUN chmod +x run.sh

CMD ["./run.sh"]
