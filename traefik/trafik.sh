#!/bin/bash
docker network create --driver=overlay traefik-net
docker service create \
    --name traefik \
    --constraint=node.role==manager \
    --publish 80:80 --publish 8080:8080 \
    --mount type=bind,source=/var/run/docker.sock,target=/var/run/docker.sock \
    --network traefik-net \
    traefik:v2.9.6 \
    --providers.docker \
    --providers.docker.swarmMode \
    --providers.docker.watch=true \
    --api.insecure=true \
    --entrypoints.web.address=:80