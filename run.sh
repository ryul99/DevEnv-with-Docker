#!/bin/bash

sudo docker run -it -v "$HOME":"$HOME" \
-e LOCAL_USER_ID=`id -u $USER` -e LOCAL_USER_NAME="$USER" \
-e LOCAL_GROUP_ID=`id -g $USER` -e LOCAL_USER_HOME="$HOME" \
centostest