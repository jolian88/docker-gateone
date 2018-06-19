#!/bin/bash
# These commands run only the first time the container is started to setup the environment
if [ -f "/firstime" ]; then 
	echo "Importing Test Database"
	rm -f /firstime
	cd /tmp
	git clone https://github.com/datacharmer/test_db.git
	cd /tmp/test_db
	mysql -uroot -p$MYSQL_ROOT_PASSWORD < employees.sql
	mysql -uroot -p$MYSQL_ROOT_PASSWORD -t < test_employees_md5.sql	
	rm -rf /tmp/test_db
	echo "Allowing root user from any host"
	echo "use mysql; update user set host='%' where host='localhost' and user='root';" | mysql -uroot -p$MYSQL_ROOT_PASSWORD
fi
