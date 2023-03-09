FROM node:16-buster-slim

RUN apt update && apt -y upgrade \
    && npm install -g npm && npm install -g @angular/cli

RUN mkdir /app && mkdir /opt/config

COPY app /app
COPY config /opt/config

WORKDIR /app

ENTRYPOINT /opt/config/entrypoint.sh


