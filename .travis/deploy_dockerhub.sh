#!/bin/sh
sudo docker login -u $DOCKER_USER -p $DOCKER_PASS

if [ "$TRAVIS_BRANCH" = "master" ]; then
    TAG="latest"
else
    TAG="$TRAVIS_BRANCH"
fi
echo  $TRAVIS_REPO_SLUG:$TAG
echo  $TRAVIS_REPO_SLUG:$TAG
sudo docker build -f Dockerfile -t $TRAVIS_REPO_SLUG:$TAG .
sudo docker push $TRAVIS_REPO_SLUG:$TAG
