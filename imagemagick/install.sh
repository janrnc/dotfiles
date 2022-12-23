#!/bin/sh
SCRIPT_DIR=$(dirname $(realpath "$0"))
BASE_DIR=${SCRIPT_DIR}/..

. ${BASE_DIR}/echo.sh

NAME="imagemagick"
installing ${NAME}
sudo apt install imagemagick
installed ${NAME}