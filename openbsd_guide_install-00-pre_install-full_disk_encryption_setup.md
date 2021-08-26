# Resources
```
https://www.openbsd.org/faq/faq4.html#Overview
https://www.openbsd.org/faq/faq14.html
https://wiki.installgentoo.com/wiki/OpenBSD
```

# Steps
```
Welcome to the OpenBSD/amd64 X.X installation program.
(I)nstall, (U)pgrade, (A)utoinstall or (S)hell? s
List device names
  # sysctl hw.disknames
  # disklabel wd0
Since the installer does not have many device nodes by default, make sure the /dev/sd0 device exists: 
  # cd /dev && sh MAKEDEV wd0
we will install to the sd0 SATA drive, erasing all of its previous contents. You may want to write random data to the drive first with something like the following:
  # dd if=/dev/random of=/dev/rwd0c bs=1m
If you're booting from MBR, do:
  # fdisk -iy wd0
If you use GPT for UEFI booting, do: 
  # fdisk -iy -g -b 960 wd0
Next, create the partition layout:
  # disklabel -E wd0
  Label editor (enter '?' for help at any prompt)
  > p
  > a a			
  offset: [64]
  size: [39825135] *
  FS type: [4.2BSD] RAID
  > w
  > q
  No label changes.
Now we can build the encrypted device on our "a" partition.
  # bioctl -c C -r auto -l wd0a softraid0
  New passphrase:
  Re-type passphrase:
  sd1 at scsibus2 targ 1 lun 0: <OPENBSD, SR CRYPTO, 005> SCSI2 0/direct fixed
  sd1: 19445MB, 512 bytes/sector, 39824607 sectors
  softraid0: CRYPTO volume attached as sd1
Since the installer does not have many device nodes by default, we'll make sure the /dev/sd1 device is accounted for.
  # cd /dev && sh MAKEDEV sd1
All data written to sd1 will now be encrypted with AES in XTS mode.
As in the previous example, we'll overwrite the first megabyte of our new pseudo-device.
  # dd if=/dev/zero of=/dev/rsd1c bs=1m count=1
Type exit to return to the main installer, then choose this new device as the one for your installation.
  # exit
```
