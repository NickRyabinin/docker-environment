#!/bin/bash

docker build --no-cache -t node -f Dockerfile.node .
docker run -it -v $(pwd):/app node /bin/bash