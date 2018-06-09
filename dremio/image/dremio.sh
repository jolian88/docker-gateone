#!/bin/bash
echo "Starting vnstat daemon ..."
/usr/bin/vnstat --create -i eth0
/usr/bin/nohup /usr/sbin/vnstatd --daemon &>/dev/null & 
#echo "Added Dezota Certificate"
#/usr/java/jdk1.8.0_172-amd64/jre/bin/keytool -importcert -noprompt -trustcacerts -storepass dremio -keystore dremio -keypass dremio -alias dremio -file /etc/certs/dremio/fullchain.pem
echo "Starting Dremio Communication Edition 2.0.5 ..."
export JAVA_HOME=/usr/java/jdk1.8.0_172-amd64/jre
echo "export JAVA_HOME=/usr/java/jdk1.8.0_172-amd64/jre" >> /root/.bashrc
echo "export PATH=\$JAVA_HOME/bin:\$PATH" >> /root/.bashrc
/etc/init.d/dremio start
tail -f /var/log/dremio/server.out
