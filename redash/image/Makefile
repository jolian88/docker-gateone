EDITOR=vim

all: build

build:
	docker build -t dezota/redash:latest .

run: build
	docker run -ti --privileged -p 80:80 -v dezota/redash:latest

detach: build
	docker run -d --privileged -p 80:80 dezota/redash:latest

clean:
	docker ps -aq --no-trunc | xargs docker stop
	docker ps -aq --no-trunc | xargs docker rm
	docker volume prune --force	

exec:
	docker exec -ti `docker ps | grep redash:latest |head -1 | awk -e '{print $$1}'` /bin/bash


stop:
	docker stop `docker ps | grep redash:latest |head -1| awk -e '{print $$1}'`


