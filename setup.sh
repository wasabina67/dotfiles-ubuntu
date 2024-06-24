#!/bin/bash

FILES=(
    "bin"
    ".bash_logout"
    ".bashrc"
    ".gitconfig"
    ".profile"
)
DOTFILES_DIR="/home/wasabina67/dotfiles-ubuntu"

for f in "${FILES[@]}"; do
    if [ ! -e "${HOME}/${f}" ]; then
        ln -s "${DOTFILES_DIR}/${f}" "${HOME}/${f}"
    fi
done

chmod +x ./bin/docker_cleanup
