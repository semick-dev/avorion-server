FROM ubuntu:20.04 as builder
MAINTAINER Scott Beddall

ENV SERVER_DIRECTORY="/srv/galaxy" \
    GALAXY_NAME="general_kenobi" \
    GALAXY_ADMIN=""

RUN mkdir -p /srv/scripts
COPY install.sh /srv/scripts/install.sh
COPY run.sh /srv/scripts/run.sh
RUN cd /srv/scripts && ls

RUN chmod +x /srv/scripts/install.sh && chmod +x /srv/scripts/run.sh

RUN  /srv/scripts/install.sh

EXPOSE 27004 27000 27003 27020 27021