FROM alpine:latest
MAINTAINER https://github.com/jolian88

ENV GATEONE_REPO_URL https://github.com/liftoff/GateOne.git

# Ensure everything is up-to-date
RUN apk update

# Install dependencies
RUN apk add --update \
    python \
    python-dev \
    py-pip \
    build-base \
    git \
    dtach \
    busybox-extras \
	libffi-dev \
	readline \
    openssh-client && \
	rm -rf /var/cache/apk/*
    
RUN pip install tornado==4.5.3
RUN pip install --upgrade futures cssmin slimit psutil

# Create the necessary directories, clone the repo, and install everything
RUN mkdir -p /gateone/logs && \
    mkdir -p /gateone/users && \
    mkdir -p /etc/gateone/conf.d && \
    mkdir -p /etc/gateone/ssl && \
    cd /gateone && \
    git clone --depth 1 $GATEONE_REPO_URL  && \
    cd GateOne && \
    python setup.py install && \
    cp docker/update_and_run_gateone.py /usr/local/bin/update_and_run_gateone

# Use our own GateOne custom configuration file rather than the one from the cloned repo
COPY 60docker.conf /etc/gateone/conf.d/60docker.conf

# This ensures our configuration files/dirs are created:
RUN gateone --configure \
   --log_file_prefix="/gateone/logs/gateone.log"

# Remove the auto-generated key/certificate so that a new one gets created the
# first time the container is started:
RUN rm -f /etc/gateone/ssl/key.pem && \
    rm -f /etc/gateone/ssl/certificate.pem \
    rm -f /gateone/logs/* 
# (We don't want everyone using the same SSL key/certificate)

COPY run.sh /run.sh
RUN chmod +x /run.sh

EXPOSE 8022

CMD ["/run.sh"]
