# Create an encrypted usb
```
# dd if=/dev/urandom of=/dev/rsd3c bs=1m
# fdisk -iy sd3
# disklabel -E sd3 # make an "a" partition of type RAID
# bioctl -c C -l sd3a softraid0
New passphrase:
Re-type passphrase:
softraid0: CRYPTO volume attached as sd4
# dd if=/dev/zero of=/dev/rsd4c bs=1m count=1
# fdisk -iy sd4
# disklabel -E sd4 # make an "i" partition
-For UFS format:
# newfs sd4i
-For fat32 format:
# newfs_msdos -F32 sd4i
```

# For mounting the USB (first time)
```
# mkdir -p /mnt/secretstuff
# mount /dev/sd4i /mnt/secretstuff
# mv somefile /mnt/secretstuff/
```

# For mounting the USB
```
# bioctl -d sd4
# mount /dev/sd4i /mnt/secretstuff
```

# For umounting the USB
```
# umount /mnt/secretstuff
# bioctl -d sd4
```
