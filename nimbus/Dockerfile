FROM suyog242/mc-cars-storm:storm-base 

MAINTAINER Suyog Mhatre <suyog.mhatre@zerebral.co.in>

ADD start.sh /

EXPOSE 3772 6627

WORKDIR /opt/apache-storm

ENTRYPOINT ["/start.sh"]

FROM ruby:2.4.4

WORKDIR /app

RUN git clone http://rupesh.raundal:rupesh19*8@portals.marketcheck.com:4567/anand.mahajan/autobot-storm-crawler-st2.0.git

