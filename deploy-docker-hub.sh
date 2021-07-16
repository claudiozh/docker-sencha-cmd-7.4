#!/bin/sh

docker build -t claudiozh/sencha-cmd:7.4 .
docker login
docker push claudiozh/sencha-cmd:7.4