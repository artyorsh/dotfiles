export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="refined"
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
bindkey '^ ' autosuggest-accept

export PATH=$PATH:/usr/local/sbin

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export HISTCONTROL=ignoreboth
export HISTSIZE=5000
export HISTTIMEFORMAT="%F %T:"
export HISTIGNORE="clear:bg:fg:cd:cd -:cd ..:exit:date:w:* --help:ls:l:ll:lll"

export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_CASK_OPTS="--appdir=~/Applications"

# https://github.com/jorgelbg/pinentry-touchid#installation
alias pinentry="pinentry-mac"

plugins=(git zsh-vi-mode zsh-autocomplete zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias brew="~/brew.sh"
