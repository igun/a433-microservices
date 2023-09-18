#!/bin/bash

# membuat docker image dari dockerfile
docker build -t item-app:v1 .
# list daftar image di lokal
docker images
# set image name disesuaikan dengan github packages
docker tag item-app:v1 ghcr.io/igun/item-app:v1
# login ke github packages
echo $CR_PAT | docker login ghcr.io -u igun --password-stdin
# unggah image ke github packages
docker push ghcr.io/igun/item-app:v1

