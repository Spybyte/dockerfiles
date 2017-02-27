FROM spybyte/rpi-node:4LTS
MAINTAINER Spybyte <spybyte@online.de>

EXPOSE 8081
WORKDIR /opt/iobroker

RUN npm cache clean \
	&& npm install mime-db \
		iobroker \
		iobroker.hm-rega \
		iobroker.hm-rpc --production --unsafe-perm \
	&& update-rc.d -f iobroker.sh remove \
	&& echo $(hostname) >.install_host

COPY run.sh run.sh
RUN chmod 775 run.sh


CMD ["./run.sh"]

