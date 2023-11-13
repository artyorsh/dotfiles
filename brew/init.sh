#!/bin/bash
current_dir=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

ln -sfv "$current_dir/.brewfile" "$HOME/.brewfile"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew bundle --file="$HOME/.brewfile"

# Brew Autoupdate
# see https://github.com/Homebrew/homebrew-autoupdate#usage

update_interval=24*3600
brew autoupdate start $update_interval \
--verbose \
--sudo \
--upgrade \
--greedy \
--enable-notification \
--cleanup
