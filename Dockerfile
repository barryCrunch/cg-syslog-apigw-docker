FROM ubuntu:latest

LABEL maintainer="michael.barry@intlfcstone.com"

RUN apt update
RUN apt install -y git \
    python \
    python-pip

RUN git clone https://github.com/ebob9/cg-syslog-apigw.git

RUN pip install --upgrade -r cg-syslog-apigw/requirements.txt

WORKDIR /cg-syslog-apigw

