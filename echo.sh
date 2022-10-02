#!/bin/sh
RED='\033[0;31m'
GREEN='\033[0;32m'
NO_COLOR='\033[0m'
ERROR_COLOR=${RED}
ERROR_NO_COLOR=${NO_COLOR}

if [ ! -t 1 ] ; then
    RED=""
    GREEN=""
    NO_COLOR=""
fi
if [ ! -t 2 ] ; then
    ERROR_COLOR=""
    ERROR_NO_COLOR=""
fi

installing() {
    echo "${GREEN}Installing${NO_COLOR}: $1"
}

uninstalling() {
    echo "${GREEN}Uninstalling${NO_COLOR}: $1"
}

installed() {
    echo "${GREEN}Installed${NO_COLOR}: $1"
}

uninstalled() {
    echo "${GREEN}Uninstalled${NO_COLOR}: $1"
}

error() {
    echo "${ERROR_COLOR}ERROR${ERROR_NO_COLOR}: $1" >&2
}