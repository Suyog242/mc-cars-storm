<<<<<<< HEAD
FROM ubuntu:latest

MAINTAINER Suyog Mhatre <suyog.242@gmail.com>

RUN  apt-get update -y && apt-get install -y default-jre && apt-get install -y curl && apt-get install -y git
=======
FROM fedora:latest

MAINTAINER Matthew Farrellee <matt@cs.wisc.edu>

RUN yum update -y && yum install -y java tar
>>>>>>> ec7012ff96aa2f6757900fca9a462a047c3cb2ff

RUN curl -s http://archive.apache.org/dist/storm/apache-storm-0.9.3/apache-storm-0.9.3.tar.gz | \
      tar zxf - -C /opt && \
      mv /opt/apache-storm-0.9.3 /opt/apache-storm
<<<<<<< HEAD
RUN git clone http://rupesh.raundal:rupesh19*8@portals.marketcheck.com:4567/anand.mahajan/autobot-storm-crawler-st2.0.git
=======

>>>>>>> ec7012ff96aa2f6757900fca9a462a047c3cb2ff
ADD configure.sh /
