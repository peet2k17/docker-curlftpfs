FROM ubuntu:18.04
MAINTAINER MediaVerse <pk@mediaverse.de>

RUN apt-get update \
    && apt-get -y install curlftpfs

####################
# CMD
####################
CMD ["/bin/bash"]
