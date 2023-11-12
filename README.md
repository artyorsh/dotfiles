# artyorsh/dotfiles

macOS configuration files and setup scripts to bootstrap a fresh machine.

The maintenance of the repo is happening mostly when I need to configure a new computer. There are still things to automate: from the SSH and GPG keys setup, to having a single script for running everything at once.

## Features

- [ohmyzsh](https://ohmyz.sh) shell with completion and [suggestion](https://github.com/zsh-users/zsh-autosuggestions) features

- Settings management
  - [Settings](defaults/init.sh)
  - https://macos-defaults.com

- App and package management
  - [Homebrew](https://brew.sh) with [brew-bundle](https://github.com/Homebrew/homebrew-bundle)
  - [Installed apps](brew/.brewfile) (Mobile development specifics :upside_down_face:)
  - VSCode with [settings](vscode/settings.json), [extension](vscode/extensions) and [keybindings](vscode/keybindings.json) management

- Password management
  - [Pass](https://www.passwordstore.org) - a unix password manager
  - [Browserpass](https://github.com/browserpass/browserpass-extension) - password access through [browser extension](https://chrome.google.com/webstore/detail/browserpass/naepdomgkenhinolocfifgehidddafch)

- GnuPG with [touch-id accessible pinentry](https://github.com/jorgelbg/pinentry-touchid)

- Vim
  - [.vimrc](vim/.vimrc)
  - [vi-mode](https://github.com/jeffreytse/zsh-vi-mode) - a terminal plugin to enable vim-mode

## Assumptions

1. Apple's command line tools are installed (xcode-select --install to launch the installer).
2. [SSH](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) and [GPG](https://docs.github.com/en/authentication/managing-commit-signature-verification/generating-a-new-gpg-key) keys are present on the machine.

## Usage

1. Adjust .env file (cp .env.setup .env)
2. Adjust the [apps file](brew/.brewfile)
3. Run install.sh scripts in directories:
  - Start with zsh and brew
  - Continue with gpg and pass
  - Run everything else

## Alternative setup

- [Ansible playbook](https://github.com/geerlingguy/mac-dev-playbook)
- [macOS Setup Guide](https://sourabhbajaj.com/mac-setup)

