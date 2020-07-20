#!/bin/sh

old="$HOME/tmux.old"
tmux="$HOME/.tmux.conf"
install_path="$(pwd)/tmux.conf"

mkdir -p "$old"
if [ -e "$tmux" ];
then
  mv "$tmux" "$old/tmux.conf"
fi

ln -s "$install_path" "$tmux"

if [[ ! -f "$HOME/.tmux/plugins/tpm" ]]; then
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

echo "Tmux configuration is installed successfully on $install_path";

