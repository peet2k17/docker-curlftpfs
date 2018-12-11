####################
# BASE IMAGE
####################
FROM ubuntu:12.04

MAINTAINER MediaVerse <pk@mediaverse.de>

RUN apt-get update \
    && apt-get -y install curlftpfs

####################
# SCRIPTS
####################
COPY root /

####################
# Set Scripts Executable
####################
RUN chmod a+x /etc/cont-finish.d/10-unmount-fuse
RUN chmod a+x /etc/cont-init.d/10-adduser

####################
# VOLUMES
####################
# Define mountable directories.
VOLUME /mnt/mountpoint

####################
# CMD
####################
CMD ["/bin/bash"]
