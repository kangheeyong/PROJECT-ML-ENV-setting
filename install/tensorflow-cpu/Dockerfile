from cagojeiger/ubuntu:18.04-tensorflow-cpu 
MAINTAINER cagojeiger@naver.com

RUN apt-get update -y

RUN git clone https://github.com/kangheeyong/PROJECT-ML-ENV-setting.git /home/PROJECT-ML-ENV-setting


RUN apt-get install supervisor -y
RUN pip3 install jupyter


WORKDIR /home/PROJECT-ML-ENV-setting
CMD ["/bin/zsh", "start.sh"]


