#!/bin/sh

source /etc/profile.d/rvm.sh
source /usr/local/rvm/scripts/rvm

cat >> conf/storm.yaml <<EOF
storm.local.dir: "/tmp"
EOF

if [ -n "$1" ]; then
   cat >> conf/storm.yaml <<EOF
storm.zookeeper.servers:
- "$1"
EOF
fi

if [ -n "$2" ]; then
   cat >> conf/storm.yaml <<EOF
nimbus.host: "$2"
EOF
fi   

cat conf/storm.yaml
