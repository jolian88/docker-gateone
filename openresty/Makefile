EDITOR=vim

all: build

build:
	docker build -t dezota/openresty:latest .

run: build
	docker run -ti --privileged -p 80:80 dezota/openresty:latest

detach: build
	docker run -d --privileged -p 80:80 dezota/openresty:latest

clean:
	docker ps -aq --no-trunc | xargs docker stop
	docker ps -aq --no-trunc | xargs docker rm
	docker volume prune --force	

exec:
	docker exec -ti `docker ps | grep openresty:latest |head -1 | awk -e '{print $$1}'` /bin/bash


stop:
	docker stop `docker ps | grep openresty:latest |head -1| awk -e '{print $$1}'`
