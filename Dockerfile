FROM node:alpine3.11
MAINTAINER Gautam Vanani

RUN apk -v --update -q  add python3 py3-pip py-pip zip
RUN pip3 install --upgrade awscli==1.18.128 -q
RUN rm -rf /tmp/* && rm -rf /var/cache/apk/*
 
RUN aws --version \
     && node -v \
     && yarn -v \
     && npm -v \
     && zip -v

VOLUME /root/.aws
VOLUME /project
