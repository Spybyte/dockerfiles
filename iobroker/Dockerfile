FROM spybyte/rpi-node:4LTS
MAINTAINER Spybyte <spybyte@online.de>

RUN mkdir -p /opt/iobroker

WORKDIR /opt/iobroker

RUN npm cache clean && \
	npm install mime-db \
				iobroker \
				iobroker.hm-rega \
				iobroker.hm-rpc --production --unsafe-perm \
	&& update-rc.d -f iobroker.sh remove \
	&& echo $(hostname) >.install_host

ADD run.sh run.sh
RUN chmod 775 run.sh

EXPOSE 8081

CMD ["/opt/iobroker/run.sh"]

