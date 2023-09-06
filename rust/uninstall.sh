#!/bin/sh
rustup self uninstall -y
sed -i '/^export PATH=\$PATH:\$HOME\/.cargo\/bin$/d' ~/.zshrc