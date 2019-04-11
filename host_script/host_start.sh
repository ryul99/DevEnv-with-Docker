#!/bin/bash

printf "Enter turned off container to start"
read i1
docker start "${SUDO_USER}_$i1"