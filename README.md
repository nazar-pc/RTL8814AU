
# Realtek 8814AU USB WiFi Driver

Driver for the Edimax EW7833UAC (AC1750 802.11ac Dual-Band Wi-Fi USB 3.0 Adapter) and other adapters using the same Realtek chipset.
Modified from the original source code for Linux kernels up to 4.8 with DKMS support.

## DKMS
[DKMS](http://linux.dell.com/dkms/) is a system which will automatically recompile and install a kernel module when a new kernel gets installed or updated.
To make use of DKMS, install the `dkms` package, which on Debian (based) systems is done like this:
```
# apt-get install dkms
```
Where '#' denotes that it should be executed as root or with sudo, but don't type that character.

To make use of the DKMS feature with this project, do the following:
```
# DRV_NAME=rtl8814AU
# DRV_VERSION=4.3.21
# mkdir /usr/src/${DRV_NAME}-${DRV_VERSION}
# git archive driver-${DRV_VERSION} | tar -x -C /usr/src/${DRV_NAME}-${DRV_VERSION}
# dkms add -m ${DRV_NAME} -v ${DRV_VERSION}
# dkms build -m ${DRV_NAME} -v ${DRV_VERSION}
# dkms install -m ${DRV_NAME} -v ${DRV_VERSION}
```
Whereby it is assumed you're in the cloned project directory and the current branch is `driver-4.3.21` (the default). If you want to use another driver version, adjust `DRV_VERSION` accordingly.

If you later on want to remove it again, do the following:
```
# DRV_NAME=rtl8814AU
# DRV_VERSION=4.3.21
# dkms remove ${DRV_NAME}/${DRV_VERSION} --all
```
