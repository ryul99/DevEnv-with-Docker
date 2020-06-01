#!/bin/bash

echo "Run $1 image as $2 container"
USER_HOME=$(getent passwd $SUDO_USER | cut -d: -f6)
docker run -it --init --name "$2" \
    --mount type=bind,source="$USER_HOME",target="$USER_HOME" \
    -e LOCAL_USER_ID="$SUDO_UID" -e LOCAL_USER_NAME="$SUDO_USER" \
    -e LOCAL_GROUP_ID="$SUDO_GID" -e LOCAL_USER_HOME="$USER_HOME" \
    -e LC_ALL=C.UTF-8 -e LANG=C.UTF-8 -it --network host \
    "$1"