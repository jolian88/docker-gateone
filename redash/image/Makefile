EDITOR=vim

all: build

build:
	docker build -t dezota/redash:4.0.1 .

run: build
	docker run -ti --privileged -p 80:80 dezota/redash:4.0.1 

detach: build
	docker run -d --privileged -p 80:80 dezota/redash:4.0.1

clean:
	docker ps -aq --no-trunc | xargs docker stop
	docker ps -aq --no-trunc | xargs docker rm
	docker volume prune --force	

exec:
	docker exec -ti `docker ps | grep redash:4.0.1 |head -1 | awk -e '{print $$1}'` /bin/bash


stop:
	docker stop `docker ps | grep redash:4.0.1 |head -1| awk -e '{print $$1}'`


