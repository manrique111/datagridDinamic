#!/bin/bash

BUILD=${1:-false}

IMAGE_NAME=adcontent-front
IMAGE_TAG=v1-front-2021
CONTAINER_NAME=front

if [[ "$BUILD" == "build" ]]
then
    echo "Compilando la imagen"
    docker build -t "$IMAGE_NAME":"$IMAGE_TAG" .
fi

echo "Creando network local"
docker network create adinfi

echo "levantando servicio"
docker rm -f "$CONTAINER_NAME"
docker run -it --name "$CONTAINER_NAME" -p 80:80 -v "${PWD}/app:/app" --env-file vars.env --network adinfi "$IMAGE_NAME":"$IMAGE_TAG"