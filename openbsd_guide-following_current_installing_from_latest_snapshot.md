The RAMDISK kernel (bsd.rd) requires you to manually define softraid devices. Repeat similar steps to creating the FDE environment.

Assuming your RAID partition on sd0 is "d", and used passphrase without a keydisk, you might do something like this
```
Boot the RAMDISK kernel
Select the [S]hell
cd /dev
sh MAKEDEV sd1 sd2
bioctl -c C -l /dev/sd0d softraid0
```

(You will be prompted for your passphrase)
```
cd /
upgrade
```
