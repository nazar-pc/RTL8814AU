# Realtek RTL8814AU USB WiFi Driver

Driver for the Edimax EW7833UAC (AC1750 802.11ac Dual-Band Wi-Fi USB 3.0 Adapter) and other adapters using the same Realtek chipset.
Modified from the original source code for Linux kernels up to 4.8 with DKMS support.
Should work on modern Linux kernels from 4.9 to 4.14-rc2 (older and newer kernels might work as well, but were not tested, feel free to let me know if it works on others).

## Usage
I recommend to install driver using DKMS, since it will make sure to recompile driver once you install newer kernel and generally requires less manual work.
Also you'll need to create a file that will instruct driver to work in USB 3.0 mode (it doesn't seem to have auto configuration for this).

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

If you connect Wi-Fi adapter using USB 3.0, make sure to instruct driver to work in USB 3.0 mode before you connect you adapter:
```bash
echo 'options 8814au rtw_switch_usb_mode=1' | sudo tee /etc/modprobe.d/8814au.conf
```

### Removal
If you later on want to remove this driver, just go to the directory with cloned driver and remove DKMS driver:
```
sudo ./dkms-remove.sh
```

If you decide to stop using USB 3.0 or want to remove driver altogether, remove file that was needed for USB 3.0 support:
```bash
sudo rm /etc/modprobe.d/8814au.conf
```
