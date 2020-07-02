#!/bin/sh
DIR="$( cd "$( dirname "$0" )" && pwd -P )"

sudo docker build -t local/ubuntu:18.04-tensorflow-gpu . -f $DIR"/Dockerfile"
sudo docker run -d -ti -p 18080-19000:18080-19000 --name jeiger\
                -e NVIDIA_VISIBLE_DEVICES=1,2 \
                -v ~/jeiger:/root/jeiger\
                local/ubuntu:18.04-tensorflow-gpu




