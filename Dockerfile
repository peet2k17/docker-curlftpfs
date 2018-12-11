####################
# BASE IMAGE
####################
FROM ubuntu:16.04

MAINTAINER MediaVerse <pk@mediaverse.de>

RUN apt-get update \
    && apt-get -y install curlftpfs

####################
# SCRIPTS
####################
COPY root /

####################
# CMD
####################
CMD ["/bin/bash"]
