#!/bin/sh
SCRIPT_DIR=$(dirname $(realpath "$0"))
BASE_DIR=${SCRIPT_DIR}/..

. ${BASE_DIR}/.env
. ${BASE_DIR}/echo.sh

NAME="Obsidian v${OBSIDIAN_VERSION}"

uninstalling "${NAME}"
sudo apt purge obsidian
uninstalled "${NAME}"