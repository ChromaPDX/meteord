FROM chromapdx/meteord:base
MAINTAINER Chroma Games Inc

ONBUILD COPY ./ /app
ONBUILD RUN bash $METEORD_DIR/on_build.sh
