#!/bin/bash
# trash all the hold docker images
# docker rmi $(docker images -f "dangling=true" -q)

#delete the old box.
docker rm ubuntubox

# build the container
docker build -t ubuntu-gp .

export MSYS2_ARG_CONV_EXCL=/root

# start the container
docker run -d --security-opt seccomp=unconfined --dns 8.8.8.8 --name ubuntubox -v ~:/root ubuntu-gp

#connect to the container
docker exec -ti ubuntubox bash
