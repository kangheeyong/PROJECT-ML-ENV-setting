from cagojeiger/ubuntu:18.04-tensorflow-cpu 
MAINTAINER cagojeiger@naver.com

RUN apt-get update -y
RUN pip3 install jupyter
RUN mkdir /root/jeiger

WORKDIR /root/jeiger


