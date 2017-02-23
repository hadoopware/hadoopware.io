#!/bin/bash
cd `dirname $(readlink -f $0)`

TAG=${1:-latest}
source ./env-docker.sh

echo "$REGISTRY:$TAG"
docker login --username=$DOCKER_USER --password=$DOCKER_PASS $DOCKER_HOST
docker tag $REPO:latest $REGISTRY:$TAG
docker push $REGISTRY
