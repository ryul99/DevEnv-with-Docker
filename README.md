# Make development environment on linux

making user-based development environment on linux with docker

1. Mounting user home folder
    - file written in container home folder must be written in host and vice versa
    - [stackoverflow](https://stackoverflow.com/a/47272481)
2. Handling user
    - file in container home folder must have same user as host
    - [link](https://denibertovic.com/posts/handling-permissions-with-docker-volumes/)
3. Container connection with ssh is needed
4. Deal with multiple user login
5. limit usage of user if possible