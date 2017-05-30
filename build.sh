#!/bin/sh

# build and upload libelectronpass package
cd libelectronpass-pkgbuild
makepkg
curl --upload-file ./libelectronpass*.pkg.tar https://transfer.sh/
