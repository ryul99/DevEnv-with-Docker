#!/bin/bash

printf "Type container number to stop"
read i1
docker stop "${SUDO_USER}_$i1"