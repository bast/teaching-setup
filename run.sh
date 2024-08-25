#!/usr/bin/env bash

# safe bash settings
set -euo pipefail

# if .sif file does not exist, build it
if [ ! -f container.sif ]; then
    sudo apptainer build container.sif container.def
fi

mkdir -p home

# if home/.bashrc does not exist, create it
if [ ! -f home/.bashrc ]; then
    cp settings/bashrc home/.bashrc
fi

xhost +SI:localuser:$(whoami)

nohup apptainer exec --cleanenv \
                     --home home:/home/username \
                     --env DISPLAY=$DISPLAY,BAT_THEME="Coldark-Cold" \
                     container.sif \
                     alacritty --config-file settings/alacritty.toml -e /bin/bash -c 'cd && exec /bin/bash' \
                     > /dev/null 2>&1 &
