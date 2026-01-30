#!/bin/zsh

cd -- "$(dirname "$0")"
DIR=$(pwd -P)

HOME_FILES=(.tmux.conf .aerospace.toml)
HOME_CONFIG_DIRS=(nvim kitty)

for file in $HOME_FILES; do
  echo "Creating symlink \"$HOME/$file -> $DIR/$file\""
  ln -s $DIR/$file $HOME/$file
done

for file in $HOME_CONFIG_DIRS; do
  echo "Creating dir symlink \"$HOME/.config/$file -> $DIR/$file\""
  ln -s $DIR/$file $HOME/.config
done
