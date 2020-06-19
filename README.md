# PROJECT-ML-ENV-setting

# 1. 실행방법

- base docker image : ubuntu:18.04
- ubuntu 18.08, python3.7, tensorflow 2.1
- port 8080-9000
- ~/jeiger 위치의 폴더를 공유함
```
# docker pull & 실행
make docker_run

# terminal 접속
make docker_exec
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

