#!/bin/sh

if [ ! -z "$*" ]; then
  docker run -v `pwd`:/build --rm -p 24689:24689 mephisto $*
fi
