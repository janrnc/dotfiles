#!/bin/sh
SCRIPT_DIR=$(dirname $(realpath "$0"))
BASE_DIR=${SCRIPT_DIR}/..

. ${BASE_DIR}/.env
. ${BASE_DIR}/echo.sh

NAME="Dropbox ${DROPBOX_VERSION}"

uninstalling "${NAME}"
sudo apt purge dropbox
uninstalled "${NAME}"