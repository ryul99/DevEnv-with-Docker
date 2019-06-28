#!/bin/bash

printf "Enter image tag to push : "
read i1
ipaddress='192.168.128.210:5000'
docker image tag "${SUDO_USER}:$i1" "$ipaddress/${SUDO_USER}:$i1"
docker push "$ipaddress/${SUDO_USER}:$i1"
docker rmi "$ipaddress/${SUDO_USER}:$i1"