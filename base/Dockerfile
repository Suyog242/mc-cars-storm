FROM ubuntu:16.04

MAINTAINER Suyog Mhatre <suyog.242@gmail.com>

RUN  apt-get update -y && apt-get install -y default-jre && apt-get install -y curl && apt-get install -y git && apt-get install python2.7 python-pip -y && apt-get install vim -y
RUN apt-get install -y build-essential
RUN apt-get install -y openssl curl zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison subversion pkg-config

ENV PATH /usr/local/rvm/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

#Install rvm
RUN apt-get install -y --no-install-recommends ca-certificates wget && wget -O /usr/local/bin/rvm-installer "https://raw.githubusercontent.com/rvm/rvm/master/binscripts/rvm-installer" && wget -O /usr/local/bin/rvm-installer.asc "https://raw.githubusercontent.com/rvm/rvm/master/binscripts/rvm-installer.asc" && gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB && curl -sSL https://get.rvm.io | bash && curl -sSL https://get.rvm.io | bash -s stable --ruby && rvm install ruby-2.3  && echo "source /usr/local/rvm/scripts/rvm" >> /etc/profile && echo "rvm use ruby-2.3 --default"  >> /etc/profile

#ENV PATH /usr/local/rvm/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

#RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
#RUN \curl -sSL https://get.rvm.io | bash
#RUN \curl -sSL https://get.rvm.io | bash -s stable --ruby
RUN /bin/bash -l -c "gem install bundler --no-ri --no-rdoc"

RUN curl -s http://redrockdigimark.com/apachemirror/storm/apache-storm-1.2.2/apache-storm-1.2.2.tar.gz  | \
      tar zxf - -C /opt && \
      mv /opt/apache-storm-1.2.2 /opt/apache-storm


ADD configure.sh /


