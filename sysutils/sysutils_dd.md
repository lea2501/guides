# Recover a damaged CD
```shell
$ dd if=/dev/sr0 of=image.iso bs=2048 conv=noerror,notrunc iflag=nonblock
```

# Make linux bootable usb
```shell
# fdisk -l
# dd bs=4M if=/PATH/TO/ISO_FILE of=/dev/sdX conv=fsync oflag=direct status=progress
```
