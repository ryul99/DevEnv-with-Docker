#!/bin/bash

docker ps -a | awk "NR==1 || /$SUDO_USER/"