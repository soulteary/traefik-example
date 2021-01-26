#!/bin/sh

NETWORK_NAME=traefik

if [ -z $(docker network ls --filter name=^${NETWORK_NAME}$ --format="{{ .Name }}") ] ; then
    docker network create ${NETWORK_NAME} ; 
fi