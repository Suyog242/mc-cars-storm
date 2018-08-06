FROM ubuntu:latest

MAINTAINER Suyog Mhatre <suyog.242@gmail.com>

RUN  apt-get update -y && apt-get install -y default-jre && apt-get install -y curl && apt-get install -y git && apt-get install python2.7 python-pip -y && apt-get install vim -y
RUN apt-get install -y build-essential
RUN apt-get install -y openssl libreadline6 libreadline6-dev curl zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison subversion pkg-config

# install RVM, Ruby, and Bundler
RUN \curl -L https://get.rvm.io | bash -s stable
RUN /bin/bash -l -c "rvm requirements"
RUN /bin/bash -l -c "rvm install 2.0"
RUN /bin/bash -l -c "gem install bundler --no-ri --no-rdoc"

RUN curl -s http://redrockdigimark.com/apachemirror/storm/apache-storm-1.2.2/apache-storm-1.2.2.tar.gz  | \
      tar zxf - -C /opt && \
      mv /opt/apache-storm-1.2.2 /opt/apache-storm


ADD configure.sh /


