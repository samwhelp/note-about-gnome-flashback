#!/usr/bin/env bash


PKG_ROOT="gnome-session-flashback-herbstluftwm"




rm -rf "var/deb"

mkdir -p "var/deb"


cp -av "asset/$PKG_ROOT/pkg-root" "var/deb/$PKG_ROOT"

cp -av "asset/build/debian" "var/deb/$PKG_ROOT/debian"




cd "var/deb/$PKG_ROOT"

debuild -i -us -uc

cd "$OLDPWD"
