#!/bin/bash
i1=${1:-$SUDO_USER}

docker build -t centosbase ./base
docker build -t "${i1}:$1" .
