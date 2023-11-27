#!/bin/bash

RETRY_LIMIT=3

mkdir -p "$DST_DIR" &&
cd "$STEAMCMD_DIR" &&

for ((i = 1; i <= RETRY_LIMIT; i++)); do
    echo "=============== Don't Starve Together - Start download or update Attempt $i ===============" &&
    ./steamcmd.sh +force_install_dir "$DST_DIR" +login anonymous +app_update 343050 validate +quit &&
    echo "=============== Don't Starve Together - Complete ==============="
    if [ $? -eq 0 ]; then
        break
    fi
done
