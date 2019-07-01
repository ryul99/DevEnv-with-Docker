#!/bin/bash

docker build -t centos-essential ./base
docker build -t base ./fully