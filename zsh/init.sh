ln -sfv $(readlink -f ./zsh/.zshrc) "$HOME/.zshrc"
ln -sfv $(readlink -f ./zsh/.zprofile) "$HOME/.zprofile"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"