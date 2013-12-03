#!/bin/sh

old="$HOME/tmux.old"
tmux="$HOME/.tmux.conf"

mkdir -p $old
if [ -e $tmux ];
then
  mv "$tmux" "$old/tmux.conf"
fi

ln -s "$(pwd)/tmux.conf" "$tmux"
