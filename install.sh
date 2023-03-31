#!/bin/sh
cd $(realpath $(dirname "$0"))

inst() {
    FOLDER_NAME=$1
    cd ./${FOLDER_NAME}
    chmod +x ./install.sh
    ./install.sh
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
