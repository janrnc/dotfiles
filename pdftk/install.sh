#!/bin/sh
SCRIPT_DIR=$(dirname $(realpath "$0"))
BASE_DIR=${SCRIPT_DIR}/..

. ${BASE_DIR}/echo.sh

NAME="pdftk"
installing ${NAME}
sudo snap install pdftk
installed ${NAME}