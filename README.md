# PROJECT-ML-ENV-setting





# 1. 실행방법
## 1.1 cpu version
- base docker image : ubuntu:18.04
- ubuntu 18.08, python3.7, tensorflow 2.1
- port 8080-9000
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
- port 8080-9000
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
## 1.3 tensorboard
- tensorboard 사용시 아래와 같이 --bind_all 옵션을 사용할 것!!
```
tensorboard --logdir=./logs/fit --port=8088 --bind_all
```

# 2. 기본 세팅
## oh-my-zsh
  - bash가 아닌 zsh을 기본 쉘로 사용한다.
  - config file path : /root/.zshrc & /root/.oh-my-zsh
  
## tmux
<img width="853" alt="스크린샷 2020-05-24 오후 4 22 16" src="https://user-images.githubusercontent.com/18637774/82748158-bd256f80-9dda-11ea-8fa9-077898b3c01e.png">
  
  - 화면 분할 기능
  - 단축키 시작 명령어는 cntl + a 이다.(기본은 cntl + c)
  - config file path : /root/.tmux.conf

## vim
<img width="844" alt="스크린샷 2020-05-24 오후 4 22 50" src="https://user-images.githubusercontent.com/18637774/82748167-d1696c80-9dda-11ea-87ac-582da04dfbcc.png">
  
  - vim 설정은 config file 참고
  - config file path : /root/.vimrc
