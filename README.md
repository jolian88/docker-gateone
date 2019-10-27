# GateOne Alpine-based Dockerfile

This reposistory contains a Dockerfile and related configuration files to build a [GateOne](https://github.com/liftoff/GateOne) docker image.

## GateOne

This is a docker image for the [GateOne](https://github.com/liftoff/GateOne) HTML5 web-based terminal emulator and SSH client.  The offical automated [build](https://hub.docker.com/r/liftoff/gateone/) on DockerHub no longer works due to some mismatched Python dependencies. This image corrects these errors and contains other optimisation like being based on the Alpine base image for a smaller overall size.

#### Build Yourself
```
git clone <this-repo-url>
docker build -t docker-gateone
```

