#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:33554432:b0da0577fd6c3d0fc802f73defa4d1a81150a00f; then
  applypatch  EMMC:/dev/block/platform/bootdevice/by-name/boot:33554432:a8c01f277b609fe98ab50f30faa4d9debf735bed EMMC:/dev/block/platform/bootdevice/by-name/recovery b0da0577fd6c3d0fc802f73defa4d1a81150a00f 33554432 a8c01f277b609fe98ab50f30faa4d9debf735bed:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
