FROM spybyte/rpi-node:4LTS

RUN apt-get -q update && apt-get install -qy \
    build-essential \
    git \
    libavahi-compat-libdnssd-dev \
    libasound2-dev \
    avahi-daemon \
    dbus \
    python

RUN npm install -g --unsafe-perm homebridge

RUN mkdir -p /var/run/dbus

ADD docker-run.sh /usr/bin/docker-run

RUN chmod 775 /usr/bin/docker-run

EXPOSE 5353 51826

CMD ["/usr/bin/docker-run"]
