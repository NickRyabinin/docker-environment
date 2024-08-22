#!/bin/bash

mkdir -p ./app/src/
mkdir ./db/

docker build -t allinone -f Dockerfile.allinone .