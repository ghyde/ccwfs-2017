#!/bin/bash

set -x
docker build -t ghyde/ccwfs-2017 -f Dockerfile_presentation .
