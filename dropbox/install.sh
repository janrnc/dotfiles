#!/bin/sh
TEMP_DIR=$(mktemp -d)
cd ${TEMP_DIR}

PACKAGE_NAME=dropbox_${VERSION}_amd64.deb

curl -L --output ${PACKAGE_NAME} "https://www.dropbox.com/download?dl=packages/ubuntu/${PACKAGE_NAME}"
sudo apt install ./${PACKAGE_NAME}

rm -r ${TEMP_DIR}