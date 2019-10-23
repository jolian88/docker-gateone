# GateOne Updated Dockerfile

This is a fork of https://github.com/Dezota/dockerfiles

Specifically trimmed down to include only the GateOne dockerfiles so they can be more easily referenced with a simple
```
build:
 context: <url-to-this-repo>
```
In the Docker compose file used by consumers

## From Dezota/dockerfiles:

This is a docker image for the [GateOne](https://github.com/liftoff/GateOne) HTML5 web-based terminal emulator and SSH client.  The offical automated [build](https://hub.docker.com/r/liftoff/gateone/) on Docker Hub no longer works due to some mismatched Python dependencies. This image corrects these errors.

#### Build Yourself
```
git clone <this-repo-url>
make build
make run
```

