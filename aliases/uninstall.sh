#!/bin/sh
if [ ! -f ~/.aliases ]; then
    error "${NAME}: ~/.aliases not found." 
    exit 1
fi

rm ~/.aliases