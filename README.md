# Make development environment on linux

making user-based development environment on linux with docker

## Features

1. Mounting user home folder (if using `host_script`)
    - User can use their home folder in container
1. PID 1 is `init` process (if using `host_script`)
1. Handling user with [gosu](https://github.com/tianon/gosu)
    - file in container home folder have same owner as host
    - you can read/write file as same user of host
1. You just build gosu docker file after your develop environment docker image

# How to run

## for Normal Users

1. Change base image of `gosu/Dockerfile` which you need
1. Build `gosu` directory with `docker build -t gosu ./gosu`
1. run container with script (`user_script/docker_run.sh`)

## Script

- docker_run: `sudo docker_run.sh "image" "container-name-you-want'`
- docker_exec: `sudo docker_exec.sh "container" "command"`

## for Server Admin

1. add user or group to sudoers (this user only can run `docker_*` with `sudo`)
1. Build `gosu` directory with `docker build -t gosu ./gosu` for default image
1. Use base directory for install essential packages if you need
