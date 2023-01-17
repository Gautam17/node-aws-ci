FROM node:16.17-alpine
LABEL maintainer="Gautam Vanani"

RUN apk --update -q add python3 py3-pip py-pip zip bash curl
RUN pip3 install --upgrade awscli==1.27.50 -q
RUN rm -rf /tmp/* && rm -rf /var/cache/apk/*

RUN aws --version \
        && node -v \
        && yarn -v \
        && npm -v \
        && zip -v

VOLUME /root/.aws
VOLUME /project
