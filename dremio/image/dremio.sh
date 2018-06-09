#!/bin/bash
echo "Starting vnstat daemon ..."
/usr/bin/vnstat --create -i eth0
/usr/bin/nohup /usr/sbin/vnstatd --daemon &>/dev/null & 
echo "Starting Dremio Communication Edition 2.0.5 ..."
export JAVA_HOME=/usr/java/jdk1.8.0_172-amd64/jre
/etc/init.d/dremio start
tail -f /var/log/dremio/server.out
