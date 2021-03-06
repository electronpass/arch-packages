#!/bin/sh

# build electronpass-desktop package
cd electronpass-desktop-pkgbuild
makepkg
cd ..

# create arch database files
repo-add electronpass-current.db.tar.gz electronpass-desktop-pkgbuild/*.pkg.tar.xz

# create release dir, copy all files into it, compress it and upload to transfer.sh
mkdir release
cp electronpass-current* release/
cp electronpass-desktop-pkgbuild/*.pkg.tar.xz release/
tar czf electronpass-current-repo.tar.gz release/
curl --upload-file ./electronpass-current-repo.tar.gz https://transfer.sh/electronpass-current-repo.$(git rev-parse --short HEAD)-x86_64.tar.gz
