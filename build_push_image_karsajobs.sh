#!/bin/bash

# membuat docker image dari dockerfile
docker build -t igun/karsajobs:latest .
# list daftar image di lokal
docker images
# set image name disesuaikan dengan github packages
docker tag igun/karsajobs:latest ghcr.io/igun/karsajobs:latest
# login ke github packages
echo $CR_PAT | docker login ghcr.io -u igun --password-stdin
# unggah image ke github packages
docker push ghcr.io/igun/karsajobs:latest