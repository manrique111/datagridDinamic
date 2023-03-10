#!/bin/bash

BUILD=${1:-false}

IMAGE_NAME=pocdatatable
IMAGE_TAG=2023
CONTAINER_NAME=frontpoc

if [[ "$BUILD" == "build" ]]
then
    echo "Build image Docker"
    docker build -t "$IMAGE_NAME":"$IMAGE_TAG" .
fi

echo "start service"
docker rm -f "$CONTAINER_NAME"
docker run -it --name "$CONTAINER_NAME" -p 4200:4200 -v "${PWD}/app:/app" "$IMAGE_NAME":"$IMAGE_TAG"