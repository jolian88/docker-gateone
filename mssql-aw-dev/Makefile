EDITOR=vim

all: build

build:
	docker build -t dezota/mssql-aw-dev:latest .

run: build
	docker run -ti --privileged -p 1433:1433 dezota/mssql-aw-dev:latest

detach: build
	docker run -d --privileged -p 1433:1433 dezota/mssql-aw-dev:latest

clean:
	docker ps -aq --no-trunc | xargs docker stop
	docker ps -aq --no-trunc | xargs docker rm
	docker volume prune --force	

exec:
	docker exec -ti `docker ps | grep mssql-aw-dev:latest |head -1 | awk -e '{print $$1}'` /bin/bash


stop:
	docker stop `docker ps | grep mssql-aw-dev:latest |head -1| awk -e '{print $$1}'`
