#!/bin/bash

printf "Type container number to connect : "
read i1
docker attach "${SUDO_USER}_$i1"