# Mount disk images
## Configure a vnd(4) device
```
# vnconfig vnd0 /tmp/iso.image
# mount -t cd9660 /dev/vnd0c /mnt
```

## Unmount the image and unconfigure the vnd(4) device
```
# umount /mnt
# vnconfig -u vnd0
```

# Mounting ntfs filesystem
## Normal ntfs mount (read-only)
```
# mount /dev/sd2i /mnt/dev0
```
## With ntfs-3g
```
# ntfs-3g /dev/sd2i /mnt/dev0
```
