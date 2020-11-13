#!/bin/bash -e

docker build -t seanshahkarami/example-plugin example-plugin
docker push seanshahkarami/example-plugin

docker build -t seanshahkarami/rsync-uploader rsync-uploader
docker push seanshahkarami/rsync-uploader
