#!/bin/bash

printf "Enter image tag to remove : "
read i1
docker rmi "${SUDO_USER}:$i1"