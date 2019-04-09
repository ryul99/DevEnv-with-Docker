#!/bin/bash
printf "Type container number to extract : "
read i1
printf "Type image tag : "
read i2
docker commit "${SUDO_USER}_$i1" "${SUDO_USER}:$i2"