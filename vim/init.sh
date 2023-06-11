#!/bin/bash
current_dir=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

ln -sfv "$current_dir/.vimrc" "$HOME/.vimrc"
