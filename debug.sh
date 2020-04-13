#!/bin/bash

CONTAINER_NAME="debugbox"

if [ -z "$1" ]; then
  echo "Usage:";
  echo "container network";
  exit 1
fi

if [ -z "$2" ]; then
  DOCKER_NETWORK=bridge
else
  DOCKER_NETWORK=$2
fi

if [ ! "$(docker image ls -q -f reference=$CONTAINER_NAME)" ]; then
  docker build -t "$CONTAINER_NAME":latest .
fi

docker run -it --pid="container:$1" \
    --net=$DOCKER_NETWORK \
    --cap-add sys_ptrace \
    --cap-add sys_admin \
    $CONTAINER_NAME:latest sh 

