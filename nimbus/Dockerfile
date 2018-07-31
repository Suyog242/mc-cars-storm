FROM suyog242/mc-cars-storme

MAINTAINER Suyog Mhatre <suyog.mhatre@zerebral.co.in>

RUN git clone http://rupesh.raundal:rupesh19*8@portals.marketcheck.com:4567/anand.mahajan/autobot-storm-crawler-st2.0.git /home

ADD start.sh /

EXPOSE 3772 6627

WORKDIR /opt/apache-storm

ENTRYPOINT ["/start.sh"]
