FROM ubuntu:14.04
MAINTAINER Jarret Raim <jarret@raim.io>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -qq update &&\
    apt-get -qqy --force-yes dist-upgrade

RUN apt-get install -qqy python git-core

RUN git clone https://github.com/RuudBurger/CouchPotatoServer.git /opt/CouchPotatoServer

VOLUME /mnt/config
VOLUME /mnt/local
VOLUME /mnt/nas

ADD ./start.sh /start.sh
RUN chmod u+x  /start.sh

EXPOSE 5050

CMD ["/start.sh"]
