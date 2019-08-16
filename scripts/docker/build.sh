#/bin/bash

DOCKERFILE=$(pwd)/scripts/docker/Dockerfile

cp $(pwd)/scripts/docker/Dockerfile Dockerfile

docker build -t globx/playback_bdd .

rm -f Dockerfile
