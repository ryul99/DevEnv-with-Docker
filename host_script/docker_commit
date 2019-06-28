#!/bin/bash

printf "Enter container number to extract : "
read i1
printf "Enter image tag ('base' cannot be tag) : "
read i2
if [ "$i2" = 'base' ]; then
    printf "'base' cannot be tag\n"
    exit 1
fi
docker commit "${SUDO_USER}_$i1" "${SUDO_USER}:$i2"