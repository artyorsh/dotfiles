export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="sunrise"

export PATH=$PATH:/usr/local/sbin

export GEM_HOME="$HOME/.gem"

export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$PATH:$JAVA_HOME/bin

export GRADLE_HOME=/usr/local/opt/gradle
export PATH=$PATH:$GRADLE_HOME/bin

export ANDROID_HOME=/usr/local/share/android-sdk
export ANDROID_NDK_HOME=/usr/local/share/android-ndk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/emulator

export PATH=$PATH:/usr/local/opt/php@8.0/bin
export PATH=$PATH:/usr/local/opt/php@8.0/sbin

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export HISTCONTROL=ignoreboth
export HISTSIZE=5000
export HISTIGNORE="clear:bg:fg:cd:cd -:cd ..:exit:date:w:* --help:ls:l:ll:lll"

# https://github.com/nvm-sh/nvm#installing-and-updating
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# https://github.com/jorgelbg/pinentry-touchid#installation
alias pinentry="pinentry-mac"

plugins=(
  git
  vi-mode
)

source $ZSH/oh-my-zsh.sh
