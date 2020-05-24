# PROJECT-ML-ENV-setting





# 1. 실행방법
## 1.1 cpu version
- base docker image : ubuntu:18.04
- ubuntu 18.08, python3.7, tensorflow 2.1
```
# docker pull & 실행
make docker_install_cpu

# jupyter 접속 
localhost:8090

# terminal 접속
make docker_exec
```
## 1.2 gpu version([nvidia-docker-git](https://github.com/NVIDIA/nvidia-docker), [cuda docker images](https://hub.docker.com/r/nvidia/cuda/tags))
- base docker image : nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04
- ubuntu 18.08, python3.7, tensorflow-gpu 2.1, cuda 10.1, nvidia-418
```
# nvidia-docker를 실행하기 위한 설치
sh install/tensotflow-gpu/nvidia-container-runtime-script.sh
# docker pull & 실행
make docker_install_gpu

# jupyter 접속 
localhost:8090

# terminal 접속
make docker_exec
```
  

