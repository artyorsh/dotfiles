eval $(/opt/homebrew/bin/brew shellenv)
export JAVA_HOME=$(/usr/libexec/java_home)
export GRADLE_HOME=$HOMEBREW_PREFIX/bin/gradle
export ANDROID_HOME=$HOMEBREW_PREFIX/share/android-commandlinetools
export ANDROID_NDK_HOME=$HOMEBREW_PREFIX/share/android-ndk
export PATH=$PATH:$JAVA_HOME/bin
export PATH=$PATH:$GRADLE_HOME/bin
export PATH=$PATH:$ANDROID_HOME/build-tools
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$HOME/Applications/Android\ Studio.app/Contents/MacOS

export GEM_HOME="$HOME/.gem"
export PATH=$PATH:$HOME/.rvm/bin
