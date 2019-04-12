#!/bin/bash

printf "Enter container number to connect : "
read i1
printf "Enter 'Ctrl + p', 'Ctrl + q' sequence to disconnect container\n"

docker attach "${SUDO_USER}_$i1"