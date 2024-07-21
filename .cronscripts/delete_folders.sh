#!/bin/bash

FOLDERS=(
    "/home/c4patino/Programming/rhizotron"
)

for FOLDER in "${FOLDERS[@]}"; do
    if [ -d $FOLDER ]; then
        rm -rf $FOLDER
    fi
done 
