#!/bin/bash

docker build -t php -f Dockerfile.php .
docker run -it --rm -v $(pwd):/app -p 9003:9003 php