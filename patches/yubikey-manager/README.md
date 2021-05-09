# yubikey-manager 4.0.2

## Issue

- [yubikey-manager 3.1.2-1](https://archlinux.org/packages/community/any/yubikey-manager/) flagged out-of-date on 2021-03-02
- yubikey-manager-gt needs yubikey-manager 4+ to work properly, see: https://github.com/Yubico/yubikey-manager-qt/issues/282
- there are also several bugs in v3 with yk serial number detection

## Solution

- copied the PKGBUILD file from [the official repo](https://github.com/archlinux/svntogit-community/tree/packages/yubikey-manager/trunk)
- modified it to use the latest yubico release
- wrote a [build-and-test.sh script](./build-and-test.sh) to check that everything installs and works just fine inside a Docker container with base-devel arch image
- e-mailed the package maintainer Morten Linderud to make him aware of this version