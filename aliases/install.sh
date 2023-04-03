#!/bin/sh
if [ -f ~/.aliases ]; then
    error "${NAME}: .aliases already exists in ~/.aliases, please remove it and retry." 
    exit 1
fi

if ! [ -x "$(command -v envsubst)" ]; then
    error "${NAME}: envsubst command not found."
    exit 1
fi
export MY_REPOS
envsubst '${MY_REPOS}' < ${SCRIPT_DIR}/.aliases > ~/.aliases