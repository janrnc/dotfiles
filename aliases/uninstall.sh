#!/bin/sh
SCRIPT_DIR=$(dirname $(realpath "$0"))
BASE_DIR=${SCRIPT_DIR}/..

. ${BASE_DIR}/.env
. ${BASE_DIR}/echo.sh

NAME="Shell Aliases"

uninstalling "${NAME}"

if [ ! -f ~/.aliases ]; then
    error "${NAME}: ~/.aliases not found." 
    exit 1
fi

rm ~/.aliases
uninstalled "${NAME}"