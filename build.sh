#!/bin/sh

docker build -t mephisto/builder  -f Dockerfile.builder  . && \
docker build -t mephisto/mephisto -f Dockerfile.mephisto . && \
docker build -t mephisto .
