#!/bin/bash

export XSOCK=/tmp/.X11-unix
export XAUTH=/tmp/.docker.xauth
touch ${XAUTH}

# Ensure xauth has been created for :0
if ! xauth list | grep -q "$(hostname --short)/unix:0"; then
    touch ~/.Xauthority
    xauth add ${DISPLAY} . $(mcookie)
fi

xauth nlist ${DISPLAY} | sed -e 's/^..../ffff/' | xauth -f ${XAUTH} nmerge -
