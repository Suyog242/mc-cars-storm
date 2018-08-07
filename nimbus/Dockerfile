FROM suyog242/mc-cars-storm:storm-base 

MAINTAINER Suyog Mhatre <suyog.mhatre@zerebral.co.in>

RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
RUN \curl -sSL https://get.rvm.io | bash
RUN \curl -sSL https://get.rvm.io | bash -s stable --ruby
RUN /bin/bash -l -c "gem install bundler --no-ri --no-rdoc"

ADD start.sh /

EXPOSE 3772 6627

WORKDIR /opt/apache-storm

ENTRYPOINT ["/start.sh"]
RUN git clone http://rupesh.raundal:rupesh19*8@portals.marketcheck.com:4567/anand.mahajan/autobot-storm-crawler-st2.0.git
