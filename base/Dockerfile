FROM ubuntu:latest

MAINTAINER Suyog Mhatre <suyog.242@gmail.com>

RUN  apt-get update -y && apt-get install -y default-jre && apt-get install -y curl && apt-get install -y git && apt-get install python2.7 python-pip -y && apt-get install vim -y
RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
RUN \curl -sSL https://get.rvm.io | bash
RUN \curl -sSL https://get.rvm.io | bash -s stable --ruby
RUN source /etc/profile.d/rvm.sh
RUN source /usr/local/rvm/scripts/rvm

RUN curl -s http://redrockdigimark.com/apachemirror/storm/apache-storm-1.2.2/apache-storm-1.2.2.tar.gz  | \
      tar zxf - -C /opt && \
      mv /opt/apache-storm-1.2.2 /opt/apache-storm


ADD configure.sh /


