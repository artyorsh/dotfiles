#!/bin/bash
current_dir=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

GPG_ID=${1}
REPO=${2}
DIST=${3:-"darwin-arm64"}

browserpass_version=$(curl --silent "https://api.github.com/repos/browserpass/browserpass-native/releases/latest" | grep '"tag_name":' |  sed -E 's/.*"([^"]+)".*/\1/')

curl -L --silent https://github.com/browserpass/browserpass-native/releases/download/$browserpass_version/browserpass-$dist-$browserpass_version.tar.gz | tar xzv - -C $current_dir

# https://github.com/browserpass/browserpass-native#install-manually
curl https://keybase.io/maximbaz/pgp_keys.asc | gpg --import

browserpass_dir=$current_dir/browserpass-$dist-$browserpass_version
browserpass_bin=browserpass-$dist

cd $browserpass_dir

make PREFIX=/usr/local BIN=$browserpass_bin configure
make PREFIX=/usr/local BIN=$browserpass_bin install
make PREFIX=/usr/local hosts-brave-user
make PREFIX=/usr/local policies-brave-user

cd $current_dir

rm -rf $browserpass_dir
gpg --batch --yes --delete-keys 56C3E775E72B0C8B1C0C1BD0B5DB77409B11B601

pass init $GPG_ID
pass git init
pass git remote add origin $REPO
pass git fetch
pass git reset --hard origin/master
