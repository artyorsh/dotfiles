#!/bin/bash
current_dir=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# https://github.com/marlonrichert/zsh-autocomplete#manual-installation
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git ~/.zsh-autocomplete
source ~/.zsh-autocomplete/zsh-autocomplete.plugin.zsh
rm -rf ~/.zsh-autocomplete

# https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

ln -sfv "$current_dir/.zshrc" "$HOME/.zshrc"
ln -sfv "$current_dir/.zprofile" "$HOME/.zprofile"

exec zsh
