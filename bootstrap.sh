#!/bin/bash
# trash all the hold docker images
# docker rmi $(docker images -f "dangling=true" -q)

# build the container
docker build -t ubuntu-gp .

# start the container
docker run -d --name ubuntubox -v `pwd`:/root ubuntu-gp tail -f /etc/hosts

#connect to the container
docker exec -ti ubuntubox bash
