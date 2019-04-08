#!/bin/bash

docker build -t centosbase ./base
docker build -t $SUDO_USER .
