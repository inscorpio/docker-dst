#!/bin/bash

mkdir -p $STEAMCMD_DIR &&
cd $STEAMCMD_DIR &&
echo "=============== Steamcmd - Start download ===============" &&
wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz &&
tar -xvzf steamcmd_linux.tar.gz &&
echo "=============== Steamcmd - Complete download ===============" &&
rm -rf steamcmd_linux.tar.gz
