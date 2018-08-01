FROM ubuntu:latest

MAINTAINER Suyog Mhatre <suyog.242@gmail.com>

RUN  apt-get update -y && apt-get install -y default-jre && apt-get install -y curl && apt-get install -y git

RUN curl -s http://archive.apache.org/dist/storm/apache-storm-0.9.3/apache-storm-0.9.3.tar.gz | \
      tar zxf - -C /opt && \
      mv /opt/apache-storm-0.9.3 /opt/apache-storm


ADD configure.sh /

RUN git clone http://rupesh.raundal:rupesh19*8@portals.marketcheck.com:4567/anand.mahajan/autobot-storm-crawler-st2.0.git
