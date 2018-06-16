#!/bin/bash
if [ "$SA_PASSWORD" != "Chang3M3R1ghtN0w" ]
then
	/opt/mssql/bin/mssql-conf set-sa-password
fi
systemctl start mssql-server
tail -f /var/opt/mssql/log/errorlog
