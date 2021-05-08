#!/bin/bash
set -e

# build the package on base-devel arch
docker build -t yubikey-manager-4.0.2-1 .

# test that everything works
echo -e "\nTesting the --version flag:"
docker run --rm --name yubikey-manager-4.0.2-1-version-test -it yubikey-manager-4.0.2-1 --version

# some more sophisticated tests:
echo -e "\nTesting the list command for devices in smartcard mode:"
docker run --rm \
            --name yubikey-manager-4.0.2-1-list-test-sc \
            -v /var/run/pcscd/pcscd.comm:/var/run/pcscd/pcscd.comm \
            -it yubikey-manager-4.0.2-1 \
            list

echo -e "\nTesting the list command for devices in usb mode:"

hidraws=
for h in $(ls /dev/hidraw*)
do
  hidraws="$hidraws -v ${h}:${h}"
done

docker run --rm \
           --privileged \
           --name yubikey-manager-4.0.2-1-list-test-usb \
           -v /dev/bus/usb:/dev/bus/usb \
           -v /sys/bus/usb/:/sys/bus/usb/ \
           -v /sys/devices/:/sys/devices/ $hidraws \
           -it yubikey-manager-4.0.2-1 \
           list