ln -sfv $(readlink -f ./brew/.brewfile) "$HOME/.brewfile"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew bundle --file="$HOME/.brewfile"
