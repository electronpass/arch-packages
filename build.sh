#!/bin/sh

# build and upload libelectronpass package
cd libelectronpass-pkgbuild
makepkg
curl --upload-file ./libelectronpass-pkgbuild/*.pkg.tar https://transfer.sh/
