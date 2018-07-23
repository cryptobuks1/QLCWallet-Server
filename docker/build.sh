#!/bin/bash

if [ -f ../.env ]; then
    rm -f ../.env
fi

REPO_ROOT=`git rev-parse --show-toplevel`
COMMIT_SHA=`git rev-parse --short HEAD`
pushd $REPO_ROOT
docker build -f docker/Dockerfile -t qlcwallet-server:latest .
popd
