# Make development environment on linux

making user-based development environment on linux with docker

1. Mounting user home folder
    - file written in container home folder must be written in host and vice versa
    - [stackoverflow](https://stackoverflow.com/a/47272481)
2. Handling user
    - file in container home folder must have same owner as host
    - [link](https://denibertovic.com/posts/handling-permissions-with-docker-volumes/)
        - In this case, one container is used by only one user. So user should be hard coded.
        - Above link make user is added every time when container is started
3. Deal with multiple user login (reaccess to process)
4. limit usage of user if possible (inherit cgroups)
5. set PID 1 as `init`

# How to run
## Dev Build
1. `sudo ./make.sh`
2. `sudo ./run.sh`

## Deploy
1. add user to sudoers (this user only can run `host_*.sh` with `sudo`)
2. `sudo ./make.sh` for default image