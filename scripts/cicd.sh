#!/bin/bash
set -xe

echo This is cicd.sh ${KEY1}

IMAGE=hieudv1408/sct-service:$(date +%s)
echo ${IMAGE}

docker build -t ${IMAGE} .
docker images
docker login -u ${DOCKER_HUB_USERNAME} -p ${DOCKER_HUB_PASSWORD}
docker push ${IMAGE}
