FROM ubuntu

RUN apt-get update &&\
    apt-get upgrade -y &&\
    apt-get install curl git make -y &&\
    curl -L https://git.io/n-install | bash -s -- -y &&\
    PATH=$PATH:/root/n/bin npm install -g yarn &&\
    PATH=$PATH:/root/n/bin yarn global add @angular/cli
