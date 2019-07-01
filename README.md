# Make development environment on linux

making user-based development environment on linux with docker

1. Mounting user home folder
    - User can use their home folder in container
1. Handling user
    - file in container home folder have same owner as host
1. PID 1 is `init` process

# How to run
## Build
1. `sudo ./make.sh`

## Deploy
1. add user or group to sudoers (this user only can run `docker_*` with `sudo`)
1. `sudo ./make.sh` for default image
1. change tag of base images as `base`