#!/bin/bash
docker network create proxy
export COMPOSE_PROJECT_NAME="dezota"
docker-compose up -d
