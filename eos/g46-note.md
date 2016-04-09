Dual OS installation from scratch
=================================

## Hardware:
* 8G memoory
* `/dev/sda` => 128 GB ssd
* `/dev/sdb` => 750 GB

## OS

### Windows 8
* `C:\` on `/dev/sda` => 128 GB
* `D:\` and `E:\` on `/dev/sdb` => ~ 650 GB

### Elementary freya
* `/` => /dev/sdb4 => 40 GB
* `/home` => /dev/sdb7 => 54 GB
* swap => /dev/sdb5 => 8 GB

**Important: `/dev/sdb6` was intentionally allocated for UEFI boot partition(ESP), if not, freya can not be booted from UEFI**

## Setup

### Prepare boot USB
* Download freya's ISO file from elementary.io
* [Learn to create install USB](https://elementary.io/docs/installation) (the usage of Rufus or UNetbootin is straightforward)

**Important: The two tools above ensure UEFI boot from USB**

### BIOS Configuration
* Start PC and then press on F2
* Disable secure boot and fast boot
* Enable CSM (compatibility support mode, legacy mode, non-UEFI mode)
* F10 (save changes and quit)
* Insert install USB
* Restart PC and then press on F2 again
* Change `boot from USB` **(the UEFI one)** to the first boot option

	**Important: BIOS proposes two options for USB boot, we should always pick the UEFI one which start with `UEFI: USB-xxx`**

* F10 (save changes and quit)

**If the PC is booted in UEFI mode, a list of start options will show on the screen. Press `up` and `down` to pick `install elementary freya`**

### Install freya
* Keep Internet always connected (needed by further step)
* When selecting installation mode, choose `something else`
* Partition disk as described above (Don't forget ESP!!!)
* Install boot-loader in ESP !!!
* Some straightforward configuration

**If any boot problem, look for (boot-repair)[https://help.ubuntu.com/community/Boot-Repair]

**If the Internet is always connected, everything will be fine. Reboot PC and enjoy.**
