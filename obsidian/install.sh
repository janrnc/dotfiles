#!/bin/sh
SCRIPT_DIR=$(dirname $(realpath "$0"))
BASE_DIR=${SCRIPT_DIR}/..

. ${BASE_DIR}/.env
. ${BASE_DIR}/echo.sh

NAME="Obsidian v${OBSIDIAN_VERSION}"

installing "${NAME}"

TEMP_DIR=$(mktemp -d)
cd ${TEMP_DIR}

PACKAGE_NAME=obsidian_${OBSIDIAN_VERSION}_amd64.deb

wget https://github.com/obsidianmd/obsidian-releases/releases/download/v${OBSIDIAN_VERSION}/${PACKAGE_NAME}
sudo apt install ./${PACKAGE_NAME}

rm -r ${TEMP_DIR}
installed "${NAME}"