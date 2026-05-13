#!/bin/sh
set -eu
dest="${HOME}"
ln -sfn "$(pwd)/gitconfig" "${dest}/.gitconfig"
ln -sfn "$(pwd)/zshrc" "${dest}/.zshrc"
ln -sfn "$(pwd)/vimrc" "${dest}/.vimrc"
echo "linked dotfiles into ${dest}"
