# Realtek RTL8814AU USB WiFi Driver

Driver for the Edimax EW7833UAC (AC1750 802.11ac Dual-Band Wi-Fi USB 3.0 Adapter), TP-Link Archer T9UH (AC1900 802.11ac Dual-Band Wi-Fi USB 3.0 Adapter) and other adapters using the same Realtek chipset.
Modified from the original source code for Linux kernels up to 4.8 with DKMS support.
Should work on modern Linux kernels from 4.9 to 4.16.

## Usage
I recommend to install driver using DKMS, since it will make sure to recompile driver once you install newer kernel and generally requires less manual work.

### Installation
You'll need to have `git` and `dkms` packages on you machine, which on Debian (based) systems (like Ubuntu) is done like this:
```bash
sudo apt-get install git dkms
```

Next clone this repository onto your machine somewhere:
```bash
git clone https://github.com/nazar-pc/RTL8814AU.git
```

Now go to the directory with cloned driver and install it using DKMS:
```
cd RTL8814AU
sudo ./dkms-install.sh
```

### Removal
If you later on want to remove this driver, just go to the directory with cloned driver and remove DKMS driver:
```
sudo ./dkms-remove.sh
```
