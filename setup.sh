#!/bin/bash
CONFIG_DIR="$(cd "$(dirname "$0")" && pwd)"

link() {
  local src="$1" dst="$2"
  if [ -e "$dst" ] && [ ! -L "$dst" ]; then
    echo "Backing up $dst -> ${dst}.bak"
    mv "$dst" "${dst}.bak"
  fi
  ln -sfn "$src" "$dst"
  echo "Linked $dst -> $src"
}

mkdir -p ~/.config

link "$CONFIG_DIR/.vimrc" ~/.vimrc
link "$CONFIG_DIR/.zshrc" ~/.zshrc
link "$CONFIG_DIR/nvim" ~/.config/nvim
link "$CONFIG_DIR/.oh-my-zsh" ~/.oh-my-zsh
