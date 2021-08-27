# Recover a damaged CD
```
$ dd if=/dev/sr0 of=image.iso bs=2048 conv=noerror,notrunc iflag=nonblock
```

# Make linux bootable usb
```
# fdisk -l
# dd bs=4M if=/PATH/TO/ISO_FILE of=/dev/sdX conv=fsync oflag=direct status=progress
```
