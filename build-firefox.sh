#!/bin/bash

set -x
docker build -t ghyde/firefox -f Dockerfile_firefox .
