from cagojeiger/ubuntu:18.04-tensorflow-gpu
MAINTAINER cagojeiger@naver.com

RUN apt-get update -y
RUN git clone https://github.com/kangheeyong/PROJECT-ML-ENV-setting.git /home/PRJECT-ML-ENV-setting

RUN apt-get install supervisor -y
RUN pip3 install jupyter


EXPOSE 8090
WORKDIR /home/PROJECT-ML-ENV-setting
CMD ["make", "run"]


