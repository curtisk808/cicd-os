#!/bin/sh
sudo docker login -u $DOCKER_USER -p $DOCKER_PASS

if [ "$TRAVIS_BRANCH" = "master" ]; then
    TAG="latest"
else
    TAG="$TRAVIS_BRANCH"
fi

echo $DOCKER_USER
echo $TRAVIS_REPO_SLUG
echo $TAG


