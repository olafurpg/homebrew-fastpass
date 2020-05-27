#!/usr/bin/env zsh
set -eux
VERSION="$1"
TAG="v$1"
FASTPASS_VERSION=$2
BLOOP_VERSION=$3
rm -rf bin
mkdir bin
curl -Lo bin/fastpass https://github.com/scalameta/fastpass/releases/download/v$FASTPASS_VERSION/fastpass-x86_64-apple-darwin
curl -Lo bin/bloop https://github.com/scalacenter/bloop/releases/download/v$BLOOP_VERSION/bloop-x86_64-apple-darwin
chmod +x bin/fastpass
chmod +x bin/bloop
TAR=fastpass.tar.gz
file bin/fastpass
file bin/bloop
tar -czvf $TAR bin/
hub release create -a $TAR -m "Fastpass $TAG" $TAG
