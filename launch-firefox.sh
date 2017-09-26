#!/bin/bash

source env.sh
set -x

docker run -it \
    --name=firefox \
    --volume=$XSOCK:$XSOCK:rw,Z \
    --volume=$XAUTH:$XAUTH:rw,Z \
    --env="XAUTHORITY=${XAUTH}" \
    --env="DISPLAY=$DISPLAY" \
    --security-opt label=type:container_runtime_t \
    --rm \
    ghyde/firefox
