
# Realtek 8814AU USB WiFi Driver

Driver for the Edimax EW7833UAC (AC1750 802.11ac Dual-Band Wi-Fi USB 3.0 Adapter) and other adapters using the same Realtek chipset.
Modified from the original source code for Linux kernels up to 4.8 with DKMS support.

## DKMS
[DKMS](http://linux.dell.com/dkms/) is a system which will automatically recompile and install a kernel module when a new kernel gets installed or updated.
To make use of DKMS, install the `dkms` package, which on Debian (based) systems is done like this:
```
# apt-get install dkms
```

To make use of the DKMS feature with this project, do the following:
```
sudo ./dkms-install.sh
```
Whereby it is assumed you're in the cloned project directory and the current branch is `driver-4.3.21` (the default). If you want to use another driver version, adjust `DRV_VERSION` defined in the shell scripts accordingly.

If you later on want to remove it again, do the following:
```
sudo ./dkms-remove.sh
```
