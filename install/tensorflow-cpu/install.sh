#!/bin/sh
DIR="$( cd "$( dirname "$0" )" && pwd -P )"

sudo docker build -t local/ubuntu:18.04-tensorflow-cpu . -f $DIR"/Dockerfile"
sudo docker run -d -ti -p 8080-9000:8080-9000 --name jeiger local/ubuntu:18.04-tensorflow-cpu

