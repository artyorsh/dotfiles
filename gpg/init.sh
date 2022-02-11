ln -sfv $(readlink -f ./gpg/gpg-agent.conf) "$HOME/.gnupg/gpg-agent.conf"
killall -9 gpg-agent; gpg-connect-agent reloadagent /bye