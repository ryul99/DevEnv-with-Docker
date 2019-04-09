#!/bin/bash

printf "Type image tag to turn on : "
read i1
printf "Type container number to be (only number) : "
read i2
printf 'Type command to run (to turn on terminal, type "/bin/bash") : '
read i3
USER_HOME=$(getent passwd $SUDO_USER | cut -d: -f6)

docker run -d -it --rm --name "${SUDO_USER}_$i2" \
--mount type=bind,source="$USER_HOME",target="$USER_HOME" \
-e LOCAL_USER_ID="$SUDO_UID" -e LOCAL_USER_NAME="$SUDO_USER" \
-e LOCAL_GROUP_ID="$SUDO_GID" -e LOCAL_USER_HOME="$USER_HOME" \
"${SUDO_USER}:$i1" "$i3"