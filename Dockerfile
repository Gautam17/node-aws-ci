FROM node:alpine3.11
MAINTAINER Gautam Vanani
RUN apk -v --update add \
        python3 \
        py3-pip \
        py-pip \
        zip
RUN pip3 install --upgrade awscli==2.0.36
RUN rm -rf /tmp/* \
    rm -rf /var/cache/apk/*

VOLUME /root/.aws
VOLUME /project
