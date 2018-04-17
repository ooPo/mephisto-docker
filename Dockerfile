FROM ubuntu:18.04
MAINTAINER Naomi Peori <naomi@peori.ca>

WORKDIR /build

ENTRYPOINT ["/usr/local/mephisto/ctu"]

##
## mephisto
##

ENV MEPHISTO "/usr/local/mephisto"

COPY --from=mephisto/mephisto ${MEPHISTO} ${MEPHISTO}
