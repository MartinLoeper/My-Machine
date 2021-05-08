FROM archlinux:base-devel

# prepare pacman for package installations
RUN pacman -Syy --noconfirm 

# install makedepends deps
RUN pacman -S --noconfirm python-setuptools swig poetry python-pyproject2setuppy python-mock

# install runtime deps
RUN pacman -S --noconfirm python-click python-pyopenssl python-pyscard python-pyusb python-fido2 ccid yubikey-personalization

# add the arch user
RUN useradd -ms /bin/bash arch
USER arch
WORKDIR /home/arch

# checkout the package to be tested
RUN mkdir yubikey-manager
COPY PKGBUILD yubikey-manager

# download the required gpg key
RUN gpg --receive-keys F04367096FBA95E8

# build the package locally
WORKDIR /home/arch/yubikey-manager
RUN makepkg

# install the package
USER root
RUN pacman -U --noconfirm yubikey-manager-4.0.2-1-any.pkg.tar.zst

# set non-privileged arch user
USER arch

ENTRYPOINT [ "ykman" ]