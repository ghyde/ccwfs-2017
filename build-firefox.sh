#!/bin/bash

set -x
docker build -t firefox -f Dockerfile_firefox .
