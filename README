# bootpart-archiso
This repo contains an archiso config for building a very small archiso.

This can be useful if your arch install breaks and you don't have a usb stick with an archiso on it with you. If your boot partition is quite large using the official arch install iso is probably better, but if you made it just 512M large and don't want to reformat, this'll fit.

# Installation

build the archiso using `mkarchiso .` while inside the same directory as this README.
after that, copy it from out/archlinux-smol-<...>.iso to your boot partition.

Assuming grub, add something like this to your grub.cfg after changing the iso
file name and iso_label:

```
menuentry 'Live Archiso' {
	set isofile='/archlinux-smol-2021.09.05-x86_64.iso'
	set iso_label='BASEARCH_202109'
	probe -u $root --set=rootuuid
	set imgdevpath="/dev/disk/by-uuid/$rootuuid"

	loopback loop $isofile
	linux (loop,gpt2)/arch/boot/x86_64/vmlinuz-linux archisolabel=$iso_label img_dev=$imgdevpath img_loop=$isofile earlymodules=loop
	initrd (loop,gpt2)/arch/boot/x86_64/initramfs-linux.img
}
```

after that, feel free to delete this directory ;)
