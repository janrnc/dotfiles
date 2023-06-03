#!/bin/sh
cd $(realpath $(dirname "$0"))
. ./echo.sh

inst() {
    NAME=$1
    cd ./${NAME}

    if [ -f .env ]; then
        . ./.env
    else
        warn "No .env found for package '${NAME}'"
    fi
    if [ -z "${VERSION}" ]; then
        VERSION="<unknown version>"
    fi
    installing "${NAME} ${VERSION}"
    . ./install.sh
    installed "${NAME}"
    eval $(sed -E 's/\=(.*)/=""/g' ./.env)
    cd ..
}

if [ $# -ge 1 ]; then
    for arg in "$@"
    do
        inst "$arg"
    done
    exit 0
fi

while true; do
    read -p "All the packages and configurations described in folders will be installed, do you want to continue? [y/n] " yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) exit 0;;
    esac
done

for entry in $(ls -d */)
do
    inst "${entry%/}"
done
