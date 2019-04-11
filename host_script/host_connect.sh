#!/bin/bash

printf "Enter container number to connect : "
read i1
docker attach "${SUDO_USER}_$i1"