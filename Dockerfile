from cagojeiger/ubuntu:18.04-tensorflow-cpu 
MAINTAINER cagojeiger@naver.com

RUN apt-get update -y
RUN apt-get install -y python3.7-dev
RUN pip3 install jupyter
RUN pip3 --no-cache-dir install torch
RUN mkdir /root/jeiger

WORKDIR /root/jeiger


