![image](https://github.com/Dezota/dockerfiles/raw/master/dezota_logo_sm.png)

# Fully configured MYSQL Community Server 8 with Employee test database

This is a docker image for [MYSQL Server 8](https://www.mysql.com).  It is based on Ubuntu 16.04 and uses the Oracle provided official packages.  It is fully configured with legacy password support. It also imports the full [Employee Test Database](https://github.com/datacharmer/test_db.git) at first launch.  **This is intended for development purposes only**.

#### Default 'root' Password
```
Chang3M3R1ghtN0w
```

#### Change the root Password in Docker Environment
```
MYSQL_ROOT_PASSWORD="MyNewPassword"
```
#### Build Yourself
```
git clone https://github.com/Dezota/dockerfiles.git
cd mysql-dev
make build
make run
```

