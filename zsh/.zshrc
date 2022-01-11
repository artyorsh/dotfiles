export ZSH="$HOME/.oh-my-zsh"

export NVM_DIR="$HOME/.nvm"
export GEM_HOME="$HOME/.gem"
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_172.jdk/Contents/Home
export ANDROID_HOME=$HOME/Library/Android/sdk

export PATH=$PATH:/usr/local/sbin
export PATH=$JAVA_HOME/bin:$PATH
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$HOME/Library/flutter
export PATH=$PATH:/usr/local/opt/php@8.0/bin
export PATH=$PATH:/usr/local/opt/php@8.0/sbin

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export HISTCONTROL=ignoreboth
export HISTSIZE=5000
export HISTIGNORE="clear:bg:fg:cd:cd -:cd ..:exit:date:w:* --help:ls:l:ll:lll"

# https://github.com/nvm-sh/nvm#installing-and-updating
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

plugins=(
  git
  vi-mode
  pod
)

source $ZSH/oh-my-zsh.sh

# https://github.com/spaceship-prompt/spaceship-prompt
autoload -U promptinit; promptinit
prompt spaceship
