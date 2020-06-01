#!/bin/bash

echo "exec '$2' in '$1' container"
docker exec -it -u $SUDO_USER "$1" "$2"