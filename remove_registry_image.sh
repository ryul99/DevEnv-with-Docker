printf "Enter image name to remove : "
read name
printf "Enter image tag to remove : "
read tag
registry='192.168.128.210:5000'
curl -v -sSL -X DELETE "http://${registry}/v2/${name}/manifests/$(
    curl -sSL -I \
        -H "Accept: application/vnd.docker.distribution.manifest.v2+json" \
        "http://${registry}/v2/${name}/manifests/${tag}" \
    | awk '$1 == "Docker-Content-Digest:" { print $2 }' \
    | tr -d $'\r' \
)"
printf "Please run 'docker exec -it docker-registry bin/registry garbage-collect /etc/docker/registry/config.yml' at registry server\n"