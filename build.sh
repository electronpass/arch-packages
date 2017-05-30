#!/bin/sh

# build libelectronpass package
cd libelectronpass-pkgbuild
makepkg
ls
cd ..
ls

# install libelectronpass
sudo pacman -U --noconfirm libelectronpass-pkgbuild/*.pkg.tar

# build electronpass-desktop package
cd electronpass-desktop-pkgbuild
makepkg
cd ..

# create arch database files
repo-add electronpass-current.db.tar.gz libelectronpass-pkgbuild/*.pkg.tar electronpass-desktop-pkgbuild/*.pkg.tar

# create release dir, copy all files into it, compress it and upload to transfer.sh
mkdir release
cp electronpass-current* release/
cp libelectronpass-pkgbuild/*pkg.tar release/
cp electronpass-desktop-pkgbuild/*.pkg.tar release/
tar czf electronpass-current-repo.tar.gz release/
curl --upload-file ./electronpass-current-repo.tar.gz https://transfer.sh/electronpass-current-repo.$(git rev-parse --short HEAD)-x86_64.tar.gz
