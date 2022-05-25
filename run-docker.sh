#!/bin/bash

docker stop react
docker container prune  -f
docker image prune -f
docker build -t react .
docker run -it -d --name react react