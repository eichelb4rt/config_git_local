#!/bin/bash

cd "$(dirname "$0")"
clone_hook_template="$(pwd)/clone_hook_template"

if [ ! -f "$HOME/.bash_aliases" ]; then
    touch "$HOME/.bash_aliases"
fi

existing_clone_alias=$(grep "alias clone=" "$HOME/.bash_aliases")
if [ -z "$existing_clone_alias" ]; then
    echo "alias clone=\"git clone --template $clone_hook_template\"" >> "$HOME/.bash_aliases"
fi
