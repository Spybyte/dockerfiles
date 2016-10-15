FROM resin/rpi-raspbian:jessie
MAINTAINER Spybyte <spybyte@online.de>

ENV BASE_URL=False IMAGE_PROXY=False
EXPOSE 8888
WORKDIR /usr/local/searx

RUN apt-get update \
    && apt-get -qy install curl \
		apt-utils \
		build-essential \
		zlib1g-dev \
      	ca-certificates \
		libxml2 \
		libxslt-dev \
	    libffi-dev \
	    libxslt-dev \
	    libxml2-dev \
	    openssl \
		libssl-dev \
	    tar \
		wget \
        python \
        python-dev \
		python-pip \
		libyaml-dev \
	&& pip install -r https://raw.githubusercontent.com/asciimoo/searx/master/requirements.txt \
    && wget -qO- https://github.com/asciimoo/searx/archive/master.tar.gz | tar xz --strip 1 \
    && sed -i "s/127.0.0.1/0.0.0.0/g" searx/settings.yml \
	&& apt-get -qy remove libxslt-dev \
	    libffi-dev \
	    libxslt-dev \
	    libxml2-dev \
		libssl-dev \
        python-dev \
		libyaml-dev \
		zlib1g-dev \
		build-essential \
	&& apt-get clean
		
		
COPY run.sh run.sh

RUN chmod +x run.sh


CMD ["./run.sh"]