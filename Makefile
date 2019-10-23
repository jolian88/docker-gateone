EDITOR=vim

all: build

build:
	docker build -t dezota/gateone:latest .

run: build
	docker run -ti --privileged -p 8000 dezota/gateone:latest

clean:
	docker ps -aq --no-trunc | xargs docker stop
	docker ps -aq --no-trunc | xargs docker rm
	docker volume prune --force	

exec:
	docker exec -ti `docker ps | grep gateone:latest |head -1 | awk -e '{print $$1}'` /bin/bash


stop:
	docker stop `docker ps | grep gateone:latest |head -1| awk -e '{print $$1}'`

