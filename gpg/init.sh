#!/bin/bash
current_dir=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

mkdir -m 700 -p "$HOME/.gnupg"
ln -sfv "$current_dir/gpg-agent.conf" "$HOME/.gnupg/gpg-agent.conf"
killall -9 gpg-agent; gpg-connect-agent reloadagent /bye
