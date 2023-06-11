#!/bin/bash
current_dir=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

mkdir -p "$HOME/.config/qBittorrent"
ln -sfv "$current_dir/qBittorrent.ini" "$HOME/.config/qBittorrent/qBittorrent.ini"
