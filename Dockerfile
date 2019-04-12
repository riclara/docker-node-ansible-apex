FROM circleci/node:8.10

RUN sudo chmod 666 /etc/apt/sources.list &&  printf "deb http://archive.debian.org/debian/ jessie main\ndeb-src http://archive.debian.org/debian/ jessie main\ndeb http://security.debian.org jessie/updates main\ndeb-src http://security.debian.org jessie/updates main\ndeb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" > /etc/apt/sources.list &&\
  sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367 &&\
  sudo apt-get update &&\
  sudo apt upgrade &&\
  sudo apt-get install software-properties-common &&\
  sudo apt-get install ansible &&\
  curl https://raw.githubusercontent.com/apex/apex/master/install.sh | sudo sh

CMD ["/bin/bash"]