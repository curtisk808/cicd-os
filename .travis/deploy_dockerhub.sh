#i/bin/sh
sudo docker login -u $DOCKER_USER -p $DOCKER_PASS

if [ "$TRAVIS_BRANCH" = "master" ]; then
    TAG="latest"
else
    TAG="$TRAVIS_BRANCH"
fi

echo $DOCKER_USER
echo $TRAVIS_REPO_SLUG
echo $TAG

sudo docker build -t cicd-os .
sudo docker images
sudo docker tag cicd-os curtisk808/cicd-os:latest
sudo docker push curtisk808/cicd-os:latest
