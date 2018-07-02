![image](https://github.com/Dezota/dockerfiles/raw/master/dezota_logo_sm.png)

# Fully configured PostgreSQL 10.4 with Employee test database from MySQL and AdventureWorks from MSSQL

This is a docker image for [PostgreSQL 10.4](https://www.postgresql.org).  It is based on the offical PostgreSQL image.  It imports the full [Employee Test Database](https://github.com/datacharmer/test_db.git) at first launch that has been converted from MySQL. It also imports the full [AdventureWorks 2016 Data Warehouse Database](https://github.com/Microsoft/sql-server-samples/releases/tag/adventureworks) that has been converted from MSSQL. **This is intended for development purposes only**.

#### Default 'postgres' Password
```
Chang3M3R1ghtN0w
```

#### Change the postgres Password in Docker Environment
```
POSTGRES_PASSWORD="MyNewPassword"
```
#### Build Yourself
```
git clone https://github.com/Dezota/dockerfiles.git
cd pgsql-dev
make build
make run
```

