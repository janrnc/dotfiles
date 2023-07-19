#!/bin/sh
if [ "$(ls -A /usr/local/go)" ]; then
    error "${NAME}: previous installation found in /usr/local/go. Please uninstall the current version before reinstalling." 
    exit 1
fi

TEMP_DIR=$(mktemp -d)
cd ${TEMP_DIR}

FILE_NAME=go${VERSION}.linux-amd64.tar.gz


curl -L --output ${FILE_NAME} "https://go.dev/dl/${FILE_NAME}"
sudo tar -C /usr/local -xzf go${VERSION}.linux-amd64.tar.gz
echo "export PATH=\$PATH:/usr/local/go/bin" >> ~/.zshrc

rm -r ${TEMP_DIR}