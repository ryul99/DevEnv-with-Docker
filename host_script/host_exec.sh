#!/bin/bash

printf "Type container number to connect : "
read i1
docker exec -it "${SUDO_USER}_$i1" /usr/local/bin/gosu "$SUDO_UID" "/bin/bash"