#!/bin/bash

# Add local user
# Either use the LOCAL_USER_ID if passed in at runtime or
# fallback

USER_ID=${LOCAL_USER_ID:-9001}
GROUP_ID=${LOCAL_GROUP_ID:-$USER_ID}
USER_NAME=${LOCAL_USER_NAME:-$USER_ID}
GROUP_NAME=$USER_NAME
USER_HOME=${LOCAL_USER_HOME:-"/home/$USER_NAME"}

if [ ! $(getent passwd $USER_ID) ]
then
    echo "Starting with UID : $USER_ID, GID: $GROUP_ID, USERNAME : $USER_NAME, GROUPNAME : $GROUP_NAME, USERHOME : $USER_HOME"
    groupadd -g $GROUP_ID -o $GROUP_NAME
    useradd --shell /bin/bash -u $USER_ID -g $GROUP_ID -o -c "" -M $USER_NAME
    echo -e 'snip\nsnip' | passwd $USER_NAME
    chmod u+w /etc/sudoers
    echo "#$USER_ID ALL=(ALL) ALL" >> /etc/sudoers
    chmod u-w /etc/sudoers
    export HOME=$USER_HOME
    export USER=$USER_NAME
fi
printf "Enter 'Ctrl + p', 'Ctrl + q' sequence to disconnect container\n"
exec /usr/local/bin/gosu "$USER_ID" "$@"
