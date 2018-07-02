EDITOR=vim

all: build

build:
	docker build -t dezota/pgsql-dev:latest .

run: build
	docker run -ti --privileged -p 5432:5432  dezota/pgsql-dev:latest

detach: build
	docker run -d --privileged -p 5432:5432 dezota/pgsql-dev:latest

clean:
	docker ps -aq --no-trunc | xargs docker stop
	docker ps -aq --no-trunc | xargs docker rm
	docker volume prune --force	

exec:
	docker exec -ti `docker ps | grep pgsql-dev:latest |head -1 | awk -e '{print $$1}'` /bin/bash


stop:
	docker stop `docker ps | grep pgsql-dev:latest |head -1| awk -e '{print $$1}'`
