#!/usr/bin/env bash

if [ -z "$1" ]; then
    echo "Error: First argument is missing, please provide path to src directory"
    exit 1
fi

mkdir cache
mkdir cache/humble
mkdir cache/humble/build
mkdir cache/humble/install
mkdir cache/humble/log

mkdir .devcontainer
curl -o .devcontainer/Containerfile -L https://raw.githubusercontent.com/entityJY/urov_init/refs/heads/main/Containerfile
curl -o .devcontainer/devcontainer.json -L https://raw.githubusercontent.com/entityJY/urov_init/refs/heads/main/devcontainer.json
sed -i '' -e "s#{PATH_TO_SRC_FOLDER}#${1}#g" .devcontainer/devcontainer.json