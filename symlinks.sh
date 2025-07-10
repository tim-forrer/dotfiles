#!/bin/bash
DOTFILES="$HOME/dotfiles"
DOTCONFIG="$HOME/.config"

apps=("nvim" "wezterm")

link() {
  mkdir -p "$(dirname "$2")"
  if [ ! -L "$2" ] || [ "$(readlink "$2")" != "$1" ]; then
    ln -sf "$1" "$2"
    echo "Linked $2 → $1"
  else
    echo "$2 already correctly linked"
  fi
}

for app in "${apps[@]}"; do
    link "$DOTFILES/$app" "$DOTCONFIG/$app"
done

if [ "$(uname -s)" = "Darwin" ]; then  # MacOS links
	link "$DOTFILES/karabiner" "$DOTCONFIG/karabiner"
	link "$DOTFILES/zsh/zshrc" "$HOME/.zshrc"
else  # Linux links
  link "$DOTFILES/xremap" "$DOTCONFIG/xremap"
fi
