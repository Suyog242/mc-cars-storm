FROM suyog242/mc-cars-storm:storm-base 

MAINTAINER Suyog Mhatre <suyog.mhatre@zerebral.co.in>

ENV PATH /usr/local/rvm/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

#Install rvm
RUN apt-get update -qq && apt-get install -y --no-install-recommends ca-certificates wget && wget -O /usr/local/bin/rvm-installer "https://raw.githubusercontent.com/rvm/rvm/master/binscripts/rvm-installer" && wget -O /usr/local/bin/rvm-installer.asc "https://raw.githubusercontent.com/rvm/rvm/master/binscripts/rvm-installer.asc" && gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB && gpg --batch --verify /usr/local/bin/rvm-installer.asc /usr/local/bin/rvm-installer && rm -r /usr/local/bin/rvm-installer.asc  && chmod +x /usr/local/bin/rvm-installer  && /bin/bash rvm-installer stable && . /etc/profile.d/rvm.sh && rvm requirements && rvm install ruby-2.3  && echo "source /usr/local/rvm/scripts/rvm" >> /etc/profile && echo "rvm use ruby-2.3 --default"  >> /etc/profile && /root/create-user ruby 4208 ruby 4208 && usermod  -a -G rvm ruby  && /root/post-install

ADD start.sh /

EXPOSE 3772 6627

WORKDIR /opt/apache-storm

ENTRYPOINT ["/start.sh"]


RUN git clone http://rupesh.raundal:rupesh19*8@portals.marketcheck.com:4567/anand.mahajan/autobot-storm-crawler-st2.0.git

