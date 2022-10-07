#!/bin/sh
SCRIPT_DIR=$(dirname $(realpath "$0"))
BASE_DIR=${SCRIPT_DIR}/..

. ${BASE_DIR}/echo.sh

NAME="Httpie"
installing ${NAME}
sudo apt install httpie
installed ${NAME}