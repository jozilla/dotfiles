#!/bin/bash
#
# Shamelessly adapted from mathiasbynens dotfiles repo: 
# <https://github.com/mathiasbynens/dotfiles/>
#
cd "$(dirname "$0")"
git pull
function doIt() {
    rsync --exclude ".git/" --exclude --exclude "bootstrap.sh" -av . ~
}
if [ "$1" == "--force" -o "$1" == "-f" ]; then
    doIt
else
    read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        doIt
    fi
fi
unset doIt
source ~/.bashrc

