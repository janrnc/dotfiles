#!/bin/sh
if [ $(command -v rustc) ]; then
    error "${NAME}: previous installation found. Please uninstall the current version before reinstalling." 
    exit 1
fi

TEMP_DIR=$(mktemp -d)
cd ${TEMP_DIR}

curl -o installer.sh --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs
sh ./installer.sh -y
echo "export PATH=\$PATH:\$HOME/.cargo/bin" >> ~/.zshrc

rm -r ${TEMP_DIR}