#!/bin/bash

while true; do
    rsync -av \
    --exclude '*.tmp' \
    --remove-source-files \
    /data /remote

    sleep 60
done
