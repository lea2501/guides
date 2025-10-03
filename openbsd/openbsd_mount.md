# Mount disk images
## Configure a vnd(4) device
```shell
# mkdir -p /mnt/vnd
# vnconfig vnd0 /tmp/iso.image
# mount -t cd9660 /dev/vnd0c /mnt/vnd
```

## Unmount the image and unconfigure the vnd(4) device
```shell
# umount /mnt/usb
# vnconfig -u vnd0
```

# Mounting external (ufs) disks
```shell
$ dmesg
$ disklabel sd2
# mkdir -p /mnt/usb
# mount /dev/sd2i /mnt/usb
# ls /mnt/usb
# umount /mnt/usb
```

# Mounting ntfs filesystem
## Normal ntfs mount (read-only)
```shell
# mount /dev/sd2i /mnt/dev0
```
## With ntfs-3g
```shell
# ntfs-3g /dev/sd2i /mnt/usb
```

# Mounting exfat formatted disk
```shell
# pkg_add exfat-fuse
# mkdir -p /mnt/usb
# dmesg
# disklabel sd2
# mount.exfat -o uid=1000 /dev/sd2i /mnt/usb
...
# umount /mnt/usb
```
