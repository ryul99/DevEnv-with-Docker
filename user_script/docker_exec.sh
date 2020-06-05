#!/bin/bash

echo "exec '$2' in '$1' container"
R_USER="${SUDO_USER:-${USER}}"
docker exec -it -u $R_USER "$1" "$2"