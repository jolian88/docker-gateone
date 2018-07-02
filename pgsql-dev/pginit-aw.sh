#!/bin/bash
wget -O /awdata/AdventureWorksDW2016_EXT.sql.gz "https://dl.dezota.com/postgresql/AdventureWorksDW2016_EXT.sql.gz"
wget -O /awdata/employees.sql.gz "https://dl.dezota.com/postgresql/employees.sql.gz"
cd /awdata
export PGUSER=postgres
psql <<- SHELL
  CREATE DATABASE "AdventureWorksDW2016_EXT";
  GRANT ALL PRIVILEGES ON DATABASE "AdventureWorksDW2016_EXT" TO postgres;
  CREATE DATABASE "employees";
  GRANT ALL PRIVILEGES ON DATABASE "employees" TO postgres;
SHELL
cat AdventureWorksDW2016_EXT.sql.gz | gzip -d | psql -d AdventureWorksDW2016_EXT
cat employees.sql.gz | gzip -d | psql -d employees
rm -rf /awdata/*

