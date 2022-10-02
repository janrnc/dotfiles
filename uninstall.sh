#!/bin/sh

uninst() {
    FOLDER_NAME=$1
    cd ./${FOLDER_NAME}
    chmod +x ./uninstall.sh
    ./uninstall.sh
    cd ..
}

if [ $# -ge 1 ]; then
    for arg in "$@"
    do
        uninst "$arg"
    done
    exit 0
fi

while true; do
    read -p "All the packages and configurations described in folders will be uninstalled, do you want to continue? [y/n] " yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) exit 0;;
    esac
done

for entry in $(ls -d */)
do
    uninst "${entry%/}"
done
