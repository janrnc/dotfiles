#!/bin/sh
SCRIPT_DIR=$(dirname $(realpath "$0"))
BASE_DIR=${SCRIPT_DIR}/..
ENV_FILE=${BASE_DIR}/.env

. ${ENV_FILE}
. ${BASE_DIR}/echo.sh

NAME="Dropbox ${DROPBOX_VERSION}"
installing ${NAME}

TEMP_DIR=$(mktemp -d)
cd ${TEMP_DIR}

PACKAGE_NAME=dropbox_${DROPBOX_VERSION}_amd64.deb

curl -L --output ${PACKAGE_NAME} "https://www.dropbox.com/download?dl=packages/ubuntu/${PACKAGE_NAME}"
sudo apt install ./${PACKAGE_NAME}

rm -r ${TEMP_DIR}
installed ${NAME}