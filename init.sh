#!/bin/sh
DIR=$(realpath $(dirname "$0"))
if [ "$#" -ne 1 ] || ! [ -f "$1" ]; then
  echo "Usage: $0 <shell-rc-file>" >&2
  exit 1
fi

mkdir -p ${HOME}/.rerun
cd ${HOME}/.rerun
git clone https://github.com/rerun/rerun.git .

cp -r ./modules/stubbs ${DIR}/stubbs 

echo "export PATH=\$PATH:\$HOME/.rerun" >> "$1"
echo "[ -r \$HOME/.rerun/etc/bash_completion.sh ] && source \$HOME/.rerun/etc/bash_completion.sh" >> "$1"
echo "[ -t 0 ] && export RERUN_COLOR=true" >> "$1"
echo "export RERUN_MODULES=${DIR}" >> "$1"