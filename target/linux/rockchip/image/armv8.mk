# SPDX-License-Identifier: GPL-2.0-only
#
# Copyright (C) 2020 Tobias Maedel

# FIT will be loaded at 0x02080000. Leave 16M for that, align it to 2M and load the kernel after it.
KERNEL_LOADADDR := 0x03200000

define Device/embedfire_doornet1
  DEVICE_VENDOR := EmbedFire
  DEVICE_MODEL := DoorNet1
  SOC := rk3328
  BOOT_FLOW := pine64-bin
  DEVICE_PACKAGES := kmod-usb-net-rtl8152 kmod-rtl8821cu
endef
TARGET_DEVICES += embedfire_doornet1

define Device/embedfire_doornet2
  DEVICE_VENDOR := EmbedFire
  DEVICE_MODEL := DoorNet2
  SOC := rk3399
  BOOT_FLOW := pine64-bin
  DEVICE_PACKAGES := kmod-r8169 -urngd
endef
TARGET_DEVICES += embedfire_doornet2

define Device/embedfire_lubancat-zero-n
  DEVICE_VENDOR := EmbedFire
  DEVICE_MODEL := LubanCat Zero N
  SOC := rk3566
  BOOT_FLOW := pine64-img
  DEVICE_PACKAGES := kmod-r8125
endef
TARGET_DEVICES += embedfire_lubancat-zero-n

define Device/embedfire_lubancat1
  DEVICE_VENDOR := EmbedFire
  DEVICE_MODEL := LubanCat 1
  SOC := rk3566
  BOOT_FLOW := pine64-img
  DEVICE_PACKAGES := kmod-r8169
endef
TARGET_DEVICES += embedfire_lubancat1

define Device/embedfire_lubancat1n
  DEVICE_VENDOR := EmbedFire
  DEVICE_MODEL := LubanCat 1N
  SOC := rk3566
  BOOT_FLOW := pine64-img
  DEVICE_PACKAGES := kmod-r8169 -urngd kmod-ata-ahci
endef
TARGET_DEVICES += embedfire_lubancat1n

define Device/embedfire_lubancat2
  DEVICE_VENDOR := EmbedFire
  DEVICE_MODEL := LubanCat 2
  SOC := rk3568
  BOOT_FLOW := pine64-img
  DEVICE_PACKAGES := kmod-ata-ahci kmod-ata-ahci-platform kmod-ata-core
endef
TARGET_DEVICES += embedfire_lubancat2

define Device/embedfire_lubancat2n
  DEVICE_VENDOR := EmbedFire
  DEVICE_MODEL := LubanCat 2N
  SOC := rk3568
  BOOT_FLOW := pine64-img
  DEVICE_PACKAGES := kmod-r8125 kmod-ata-ahci kmod-ata-ahci-platform kmod-ata-core
endef
TARGET_DEVICES += embedfire_lubancat2n

define Device/embedfire_lubancat2io
  DEVICE_VENDOR := EmbedFire
  DEVICE_MODEL := LubanCat 2IO
  SOC := rk3568
  BOOT_FLOW := pine64-img
  DEVICE_PACKAGES := kmod-r8125 kmod-ata-ahci kmod-ata-ahci-platform kmod-ata-core
endef
TARGET_DEVICES += embedfire_lubancat2io