#!/bin/bash

docker build -t node -f Dockerfile.node .
docker run -it -v $(pwd):/app node /bin/bash
