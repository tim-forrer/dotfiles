#!/bin/bash
DOTFILES="$HOME/dotfiles"
DOTCONFIG="$HOME/.config"

link() {
  mkdir -p "$(dirname "$2")"
  if [ ! -L "$2" ] || [ "$(readlink "$2")" != "$1" ]; then
    ln -sf "$1" "$2"
    echo "Linked $2 → $1"
  else
    echo "$2 already correctly linked"
  fi
}

link "$DOTFILES/nvim" "$DOTCONFIG/nvim"
link "$DOTFILES/alacritty" "$DOTCONFIG/alacritty"
link "$DOTFILES/tmux" "$DOTCONFIG/tmux"
link "$DOTFILES/karabiner" "$DOTCONFIG/karabiner"
ln -s "$DOTFILES/zshrc" "$HOME/.zshrc"
