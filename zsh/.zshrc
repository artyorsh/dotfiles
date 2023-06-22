export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="refined"
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
bindkey '^ ' autosuggest-accept

export PATH=$PATH:/usr/local/sbin

export GEM_HOME="$HOME/.gem"

export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$PATH:$JAVA_HOME/bin

export GRADLE_HOME=$HOMEBREW_PREFIX/bin/gradle
export PATH=$PATH:$GRADLE_HOME/bin

export ANDROID_HOME=$HOMEBREW_PREFIX/share/android-sdk/tools/
export ANDROID_NDK_HOME=$HOMEBREW_PREFIX/share/android-ndk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin

export PATH=$PATH:$HOMEBREW_PREFIX/opt/php@8.0/bin
export PATH=$PATH:$HOMEBREW_PREFIX/opt/php@8.0/sbin

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export HISTCONTROL=ignoreboth
export HISTSIZE=5000
export HISTIGNORE="clear:bg:fg:cd:cd -:cd ..:exit:date:w:* --help:ls:l:ll:lll"

export HOMEBREW_NO_AUTO_UPDATE=1

# https://github.com/nvm-sh/nvm#installing-and-updating
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# https://mac.install.guide/ruby/13.html
if [ -d "$HOMEBREW_PREFIX/opt/ruby/bin" ]; then
  export PATH=$HOMEBREW_PREFIX/opt/ruby/bin:$PATH
  export PATH=`gem environment gemdir`/bin:$PATH
fi

# https://github.com/jorgelbg/pinentry-touchid#installation
alias pinentry="pinentry-mac"

alias wgup="wg-quick up wg0"
alias wgdown="wg-quick down wg0"
alias brewb="brew bundle --file=~/.brewfile"
alias brewup="brew update && brew upgrade && brew upgrade --cask --greedy && brew cleanup"

plugins=(
  git
  vi-mode
  zsh-autocomplete
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
