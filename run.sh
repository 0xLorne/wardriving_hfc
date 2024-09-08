#!/bin/bash

mkdir -p ./logs

sudo docker run --rm -it \
  --privileged \
  --net=host \
  --pid=host \
  --name hfc_wardriving \
  -v $(pwd)/logs:/var/log/kismet \
  hfc/kismet:latest

