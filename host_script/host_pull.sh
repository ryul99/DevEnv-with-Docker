#!/bin/bash

printf "Enter image tag to pull : "
read i1
ipaddress='192.168.128.210:5000'
docker pull "$ipaddress/${SUDO_USER}:$i1"
docker image tag "$ipaddress/${SUDO_USER}:$i1" "${SUDO_USER}:$i1"
docker rmi "$ipaddress/${SUDO_USER}:$i1"