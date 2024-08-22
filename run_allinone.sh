#!/bin/bash

docker run -it \
  -v $(pwd)/app:/app \
  -v $(pwd)/db:/var/lib/postgresql/data \
  -p 80:80 \
  --name allinone \
  allinone