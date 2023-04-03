#!/bin/sh
TEMP_DIR=$(mktemp -d)
cd ${TEMP_DIR}

PACKAGE_NAME=obsidian_${VERSION}_amd64.deb

wget https://github.com/obsidianmd/obsidian-releases/releases/download/v${VERSION}/${PACKAGE_NAME}
sudo apt install ./${PACKAGE_NAME}

rm -r ${TEMP_DIR}