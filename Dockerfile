FROM node:12-buster-slim

RUN apt update && apt -y upgrade \
    && npm install -g npm@8.5.1 && npm install -g @angular/cli@10.0.8 \
    && apt install -y python3-pip \
    && apt install -y build-essential libssl-dev libffi-dev python3-dev \
    && apt install -y vim && apt list --upgradable

RUN ln -s /usr/bin/python3 /usr/bin/python

RUN mkdir /app && mkdir /opt/config

COPY app /app
COPY config /opt/config

WORKDIR /app

ENTRYPOINT /opt/config/entrypoint.sh


