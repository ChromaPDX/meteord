FROM debian:wheezy
MAINTAINER Chroma Games Inc.

ENV METEORD_DIR /opt/meteord
COPY scripts $METEORD_DIR

RUN bash $METEORD_DIR/init.sh

EXPOSE 80
ENTRYPOINT bash $METEORD_DIR/run_app.sh

ONBUILD COPY ./ /app
ONBUILD RUN bash $METEORD_DIR/on_build.sh
