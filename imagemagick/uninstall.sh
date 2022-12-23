#!/bin/sh
SCRIPT_DIR=$(dirname $(realpath "$0"))
BASE_DIR=${SCRIPT_DIR}/..

. ${BASE_DIR}/echo.sh

NAME="imagemagick"
uninstalling ${NAME}
sudo apt purge imagemagick
sudo apt autoremove
uninstalled ${NAME}