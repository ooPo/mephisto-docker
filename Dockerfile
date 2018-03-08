FROM ubuntu:18.04
MAINTAINER Naomi Peori <naomi@peori.ca>

WORKDIR /build

ENTRYPOINT ["/usr/local/mephisto/ctu"]

##
## ubuntu
##

RUN \
  apt-get -y update && \
  apt-get -y install clang git liblz4-dev make python python-capstone python-pip && \
  apt-get -y clean autoclean autoremove && \
  rm -rf /var/lib/{apt,dpkg,cache,log}/

##
## mephisto
##

RUN \
  cd /usr/local && \
  git clone --recursive https://github.com/reswitched/Mephisto mephisto && \
  cd mephisto && \
    pip install -r requirements.txt && \
    make -j
