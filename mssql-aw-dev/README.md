![image](https://github.com/Dezota/dockerfiles/raw/master/dezota_logo_sm.png)

# Fully configured MSSQL Server for Linux with AdventureWorks test database

This is a docker image for [MSSQL Server for Linux](https://docs.microsoft.com/en-us/sql/linux/sql-server-linux-overview?view=sql-server-linux-2017). It is based on Ubuntu 16.04. It is fully configured with Full Text Search, SQL Agent, and SSIS.  It also includes the full [AdventureWorks 2016 Data Warehouse Database](https://github.com/Microsoft/sql-server-samples/releases/tag/adventureworks) database pre-installed. As a result, the image is around 5GB in size.

#### Default 'sa' Password
```
Chang3M3R1ghtN0w
```

#### Change the sa Password in Docker Environment
```
SA_PASSWORD="MyNewPassword"
```
#### Build Yourself
git clone https://github.com/Dezota/dockerfiles.git
cd mssql-aw-dev
make build
make run
```

