#!/bin/bash
current_dir=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

ln -sfv "$current_dir/.gitconfig" "$HOME/.gitconfig"
ln -sfv "$current_dir/.gitignore_global" "$HOME/.gitignore_global"

mkdir -p "$HOME/.config/gh"
ln -sfv "$current_dir/gh_config.yml" "$HOME/.config/gh/config.yml"
