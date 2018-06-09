#!/bin/bash
echo "Starting Dremio Communication Edition 2.0.5 ..."
export JAVA_HOME=/usr/java/jdk1.8.0_172-amd64/jre
/etc/init.d/dremio start
tail -f /var/log/dremio/server.out
