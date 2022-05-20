#!/bin/bash
set -xe

echo This is cicd.sh ${KEY1}
IMAGE=hieudv1408/sct-service:$(date +%s)
docker build -t ${IMAGE} .
docker login -u ${DOCKER_HUB_USERNAME} -p ${DOCKER_HUB_PASSWORD}
docker push hieudv1408/sct-service
