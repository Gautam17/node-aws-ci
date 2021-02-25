FROM node:12.18.3-alpine3.12
LABEL maintainer="Gautam Vanani"

RUN apk --update -q add python3 py3-pip py-pip zip bash curl
RUN pip3 install --upgrade awscli==1.19.0 -q
RUN rm -rf /tmp/* && rm -rf /var/cache/apk/*

RUN aws --version \
        && node -v \
        && yarn -v \
        && npm -v \
        && zip -v

VOLUME /root/.aws
VOLUME /project
