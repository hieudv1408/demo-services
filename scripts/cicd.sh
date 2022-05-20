#!/bin/bash
set -xe

echo This is cicd.sh ${KEY1}
docker build -t hieudv1408/sct-service .
docker login -u ${DOCKER_HUB_USERNAME} -p ${DOCKER_HUB_PASSWORD}
docker push hieudv1408/sct-service-dev
