# Arch Packages
[![Build Status](https://travis-ci.org/electronpass/arch-packages.svg?branch=master)](https://travis-ci.org/electronpass/arch-packages)

Arch package build system for [libelectronpass](https://github.com/electronpass/libelectronpass/) and [electronpass-desktop](https://github.com/electronpass/electronpass-desktop/).

Packages get built on [Travis CI](https://travis-ci.org/electronpass/arch-packages) and are uploaded to [transfer.sh](https://transfer.sh). All the releases are then published on [GitHub Releases](https://github.com/electronpass/arch-packages/releases) page under `current` tag and available for manual download or via pacman.

To add this repo to pacman, add the following lines to your `/etc/pacman.conf`:

```
[electronpass-current]
Server = https://github.com/electronpass/arch-packages/releases/download/current
SigLevel = PackageOptional
```

Then install the `electronpass` package:

```
sudo pacman -Syy # update the database if needed
sudo pacman -S electronpass
```


The repository was set up following this brilliant [article](https://fusion809.github.io/how-to-create-archlinux-repository/) on Arch packages.

## License
This project is licensed under [GNU GPLv3 license](https://github.com/electronpass/electronpass-desktop/blob/master/LICENSE).
