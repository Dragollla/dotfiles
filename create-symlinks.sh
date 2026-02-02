#!/bin/zsh

cd -- "$(dirname "$0")"
DIR=$(pwd -P)

HOME_FILES=(tmux.conf aerospace.toml zprofile zshrc ideavimrc)
HOME_CONFIG_DIRS=(nvim kitty)

for file in $HOME_FILES; do
  if [ $1 = '-f' ]; then
    rm $HOME/.$file
    echo "Overriding symlink \"$HOME/.$file -> $DIR/$file\""
  else
    echo "Creating symlink \"$HOME/.$file -> $DIR/$file\""
  fi

  ln -s $DIR/$file $HOME/.$file

done

for file in $HOME_CONFIG_DIRS; do
  if [ $1 = '-f' ]; then
    echo "Overriding dir symlink \"$HOME/.config/$file -> $DIR/$file\""
    rm -r $HOME/.config/$file
  else
    echo "Creating dir symlink \"$HOME/.config/$file -> $DIR/$file\""
  fi

  ln -s $DIR/$file $HOME/.config

done
