## rpi-searx

![](https://i.goopics.net/ls.png)

#### What is rpi-searx?
rpi-searx is docker image for the raspberry pi based on work by [wonderfall/searx](https://github.com/Wonderfall/dockerfiles/tree/master/searx)

#### Features
- Based on [resin/rpi-raspbian:jessie](https://hub.docker.com/r/resin/rpi-raspbian)
- Latest code from [asciimoo/searx](https://github.com/asciimoo/searx)
- A unique secret key is generated when booting the first time.

#### Environment variables
- **IMAGE_PROXY** : enables images proxying *(default : False)*
- **BASE_URL** : http://domain.tld *(default : False)*

#### Ports
- **8888** 

#### Start
docker run -d -restart=always -p 80:8888 --name searx spybyte/rpi-searx:latest

