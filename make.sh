#!/bin/bash
ipaddress='192.168.128.210:5000'

docker build -t centos-essential ./base
docker build -t "${ipaddress}/base" ./fully
docker rmi centos-essential