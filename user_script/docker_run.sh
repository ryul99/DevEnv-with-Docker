#!/bin/bash

echo "Run '$1' image as '$2' container"
R_USER="${SUDO_USER:-${USER}}"
R_UID="${SUDO_UID:-${UID}}"
R_GID="${SUDO_GID:-$(id -g "$R_USER")}"
USER_HOME=$(getent passwd $R_USER | cut -d: -f6)
docker run -it --init --name "$2" \
    --mount type=bind,source="$USER_HOME",target="$USER_HOME" \
    -e LOCAL_USER_ID="$R_UID" -e LOCAL_USER_NAME="$R_USER" \
    -e LOCAL_GROUP_ID="$R_GID" -e LOCAL_USER_HOME="$USER_HOME" \
    -e LC_ALL="C.UTF-8" -e LANG="C.UTF-8" -it --network host \
    "$1"