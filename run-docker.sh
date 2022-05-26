#!/bin/bash

docker stop react
docker container prune  -f
docker image prune -f
docker build -t react-z .
docker run -it -d --name react react-z