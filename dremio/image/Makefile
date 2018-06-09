EDITOR=vim

all: build

build:
	docker build -t dezota/dremio-oss:2.0.5 .

run: build
	docker run -ti --privileged -p 2181 -p 9047 -p 31010 -p 45678 dezota/dremio-oss:2.0.5

clean:
	docker ps -aq --no-trunc | xargs docker stop
	docker ps -aq --no-trunc | xargs docker rm
	docker volume prune --force	

exec:
	docker exec -ti `docker ps | grep dremio-oss:release |head -1 | awk -e '{print $$1}'` /bin/bash


stop:
	docker stop `docker ps | grep dremio-oss:release |head -1| awk -e '{print $$1}'`

