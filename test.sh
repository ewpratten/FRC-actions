#! /bin/bash

# Locally test builds and deployment
docker build -t frcbuildlocal .
docker run -it --entrypoint=/test-entrypoint.sh frcbuildlocal