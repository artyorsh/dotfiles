dist=darwin64
browserpass_version=$(curl --silent "https://api.github.com/repos/browserpass/browserpass-native/releases/latest" | grep '"tag_name":' |  sed -E 's/.*"([^"]+)".*/\1/')

curl -L --silent https://github.com/browserpass/browserpass-native/releases/download/$browserpass_version/browserpass-$dist-$browserpass_version.tar.gz | tar xzv - -C $TMPDIR

# https://github.com/browserpass/browserpass-native#install-manually
curl https://keybase.io/maximbaz/pgp_keys.asc | gpg --import

browserpass_bin=$TMPDIR/browserpass-$dist-$browserpass_version/browserpass-$dist

cd $(dirname $browserpass_bin)

make PREFIX=/usr/local BIN=$browserpass_bin configure
make PREFIX=/usr/local BIN=$browserpass_bin install
make PREFIX=/usr/local hosts-chrome-user

cd $(dirname $browserpass_bin)/..

rm -rf $(dirname $browserpass_bin)
gpg --batch --yes --delete-keys 56C3E775E72B0C8B1C0C1BD0B5DB77409B11B601
