#!/bin/sh
sudo docker login -u $DOCKER_USER -p $DOCKER_PASS

if [ "$TRAVIS_BRANCH" = "master" ]; then
    TAG="latest"
else
    TAG="$TRAVIS_BRANCH"
fi
sudo docker build -f Dockerfile -t curtisk808/cicd-os .

sudo docker push curtisk808/cicd-os
