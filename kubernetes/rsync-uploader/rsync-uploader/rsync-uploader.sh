#!/bin/bash

while true; do
    rsync -av \
    --remove-source-files \
    /data /remote

    sleep 60
done
