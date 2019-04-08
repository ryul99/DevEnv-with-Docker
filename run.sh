#!/bin/bash
USER_HOME=$(getent passwd $SUDO_USER | cut -d: -f6)

docker run -it -v "$USER_HOME":"$USER_HOME" \
-e LOCAL_USER_ID="$SUDO_UID" -e LOCAL_USER_NAME="$SUDO_USER" \
-e LOCAL_GROUP_ID="$SUDO_GID" -e LOCAL_USER_HOME="$USER_HOME" \
centostest