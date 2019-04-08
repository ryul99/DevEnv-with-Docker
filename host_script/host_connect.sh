#!/bin/bash

docker exec -it "$SUDO_USER" /usr/local/bin/gosu "$SUDO_UID" "/bin/bash"