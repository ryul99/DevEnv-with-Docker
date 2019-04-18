#!/bin/bash

printf "Enter image tag to push : "
read i1
docker image tag "${SUDO_USER}:$i1" "<ipaddress>/${SUDO_USER}:$i1"
docker push "<ipaddress>/${SUDO_USER}:$i1"
docker rmi "<ipaddress>/${SUDO_USER}:$i1"