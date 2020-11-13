#!/bin/bash

while true; do
    # ensure data directories exist and have right permissions
    mkdir -p /data/training-data
    chmod 333 /data/training-data

    rsync -av \
    --exclude '*.tmp' \
    --remove-source-files \
    /data /remote

    sleep 60
done
