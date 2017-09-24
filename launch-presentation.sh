#!/bin/bash

source env.sh
set -x

docker run -it \
    --name=ccwfs_2017_presentation \
    --volume=$XSOCK:$XSOCK:rw,Z \
    --volume=$XAUTH:$XAUTH:rw,Z \
    --env="XAUTHORITY=${XAUTH}" \
    --env="DISPLAY=$DISPLAY" \
    --security-opt label=type:container_runtime_t \
    --rm \
    ghyde/ccwfs-2017
