#!/bin/bash

docker build --no-cache -t base -f Dockerfile .
docker run -it -v $(pwd):/app base /bin/bash