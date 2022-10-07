#!/bin/sh
SCRIPT_DIR=$(dirname $(realpath "$0"))
BASE_DIR=${SCRIPT_DIR}/..

. ${BASE_DIR}/echo.sh

NAME="Httpie"
uninstalling ${NAME}
sudo apt purge httpie
uninstalled ${NAME}