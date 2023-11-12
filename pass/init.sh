#!/bin/bash
current_dir=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

browserpass_version=$(curl --silent "https://api.github.com/repos/browserpass/browserpass-native/releases/latest" | grep '"tag_name":' |  sed -E 's/.*"([^"]+)".*/\1/')

echo "Cloning browserpass-native client for $ARCH arch"

curl -L --silent https://github.com/browserpass/browserpass-native/releases/download/$browserpass_version/browserpass-$ARCH-$browserpass_version.tar.gz | tar xzv - -C $current_dir

# https://github.com/browserpass/browserpass-native#install-manually
curl https://keybase.io/maximbaz/pgp_keys.asc | gpg --import

browserpass_dir=$current_dir/browserpass-$ARCH-$browserpass_version
browserpass_bin=browserpass-$ARCH

cd $browserpass_dir

make PREFIX=/usr/local BIN=$browserpass_bin configure
make PREFIX=/usr/local BIN=$browserpass_bin install
make PREFIX=/usr/local hosts-chrome-user
make PREFIX=/usr/local policies-chrome-user

cd $current_dir

rm -rf $browserpass_dir
gpg --batch --yes --delete-keys 56C3E775E72B0C8B1C0C1BD0B5DB77409B11B601

mkdir -p $HOME/.password-store
pass init $GPG_KEY_ID
pass git init
pass git remote add origin $PASS_REPO_URL
pass git fetch
pass git reset --hard origin/master
