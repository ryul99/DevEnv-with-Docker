#!/bin/bash

docker image ls | awk "NR==1 || /$SUDO_USER/"