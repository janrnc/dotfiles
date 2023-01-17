#!/bin/sh
SCRIPT_DIR=$(dirname $(realpath "$0"))
BASE_DIR=${SCRIPT_DIR}/..

. ${BASE_DIR}/echo.sh

NAME="pdftk"
uninstalling ${NAME}
sudo snap remove pdftk
uninstalled ${NAME}