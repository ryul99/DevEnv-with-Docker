#!/bin/bash

printf "Enter image tag to turn on (enter base for base image) : "
read i1
printf "Enter container number to be (only number) : "
read i2
# printf 'Type command to run (to turn on terminal, type "/bin/bash") : '
# read i3
# i3=${i3:-"/bin/bash"}
if [ "$i1" = 'base' ]; then
    i1='base'
else
    i1="${SUDO_USER}:$i1"
fi

printf "image tag : $i1\n"

USER_HOME=$(getent passwd $SUDO_USER | cut -d: -f6)

docker run -it --name "${SUDO_USER}_$i2" \
--mount type=bind,source="$USER_HOME",target="$USER_HOME" \
-e LOCAL_USER_ID="$SUDO_UID" -e LOCAL_USER_NAME="$SUDO_USER" \
-e LOCAL_GROUP_ID="$SUDO_GID" -e LOCAL_USER_HOME="$USER_HOME" \
"$i1"