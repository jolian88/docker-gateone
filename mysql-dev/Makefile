EDITOR=vim

all: build

build:
	docker build -t dezota/mysql-dev:latest .

run: build
	docker run -ti --privileged -p 3306:3306 -p 33060:33060 dezota/mysql-dev:latest

detach: build
	docker run -d --privileged -p 3306:3306 -p 33060:33060 dezota/mysql-dev:latest

clean:
	docker ps -aq --no-trunc | xargs docker stop
	docker ps -aq --no-trunc | xargs docker rm
	docker volume prune --force	

exec:
	docker exec -ti `docker ps | grep mysql-dev:latest |head -1 | awk -e '{print $$1}'` /bin/bash


stop:
	docker stop `docker ps | grep mysql-dev:latest |head -1| awk -e '{print $$1}'`
