#!/bin/sh

if [ ! -f .env ] then
  export $(cat .env | xargs)
fi

current_dir=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

sh "$current_dir/defaults/init.sh"
sh "$current_dir/zsh/init.sh"
sh "$current_dir/brew/init.sh"
sh "$current_dir/gpg/init.sh"
sh "$current_dir/git/init.sh"
sh "$current_dir/vim/init.sh"
sh "$current_dir/pass/init.sh"
sh "$current_dir/vscode/init.sh"
sh "$current_dir/qbittorrent/init.sh"
