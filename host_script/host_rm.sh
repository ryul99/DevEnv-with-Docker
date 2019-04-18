#!/bin/bash

printf "Enter turned off container number to remove : "
read i1
docker rm "${SUDO_USER}_$i1"