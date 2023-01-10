#!/bin/bash
dir=$(dirname -- "$( readlink -f -- "$0")")
docker network create --driver=overlay traefik-net
docker stack deploy --compose-file "$dir/docker-compose.yml" traefik