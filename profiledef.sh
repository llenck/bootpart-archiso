#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="archlinux-smol"
iso_label="BASEARCH_$(date +%Y%m)"
iso_publisher="your mom"
iso_application="Smol Arch iso to put on ur /boot"
iso_version="$(date +%Y.%m.%d)"
install_dir="arch"
buildmodes=('iso')
bootmodes=('uefi-x64.systemd-boot.esp')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'zstd' '-Xcompression-level' '19')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
)
