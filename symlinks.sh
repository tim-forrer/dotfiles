#!/bin/bash
DOTFILES="$HOME/dotfiles"
DOTCONFIG="$HOME/.config"

ln -s "$DOTFILES/nvim" "$DOTCONFIG"
ln -s "$DOTFILES/darktable" "$DOTCONFIG"
ln -s "$DOTFILES/alacritty" "$DOTCONFIG"
