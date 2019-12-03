#!/bin/bash
#Takes two parms:
#CLI_VERSION
#TRAVIS_TAG
set -e
#sed -i  "s/CLI_VERSION/$1/g" ./Dockerfile
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker build -t $DOCKER_ORG/appsody-buildah:$2 --build-arg CLI_VERSION=$1 .
docker push $DOCKER_ORG/appsody-buildah:$2
