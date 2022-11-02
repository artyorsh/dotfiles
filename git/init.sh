ln -sfv $(readlink -f ./git/.gitconfig) "$HOME/.gitconfig"
ln -sfv $(readlink -f ./git/.gitignore_global) "$HOME/.gitignore_global"
ln -sfv $(readlink -f ./git/.gh_config.yml) "$HOME/.config/config.yml"
