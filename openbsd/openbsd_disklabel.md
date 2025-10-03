# List disks
```shell
# sysctl hw.disknames
```

# Create disk partition
```shell
# disklabel sd2
# disklabel -E sd2
> p
> d a
> d i
> a i
> w
> q
```

# Format fat32 partition
```shell
# newfs_msdos -F 32 /dev/rsd2i
```
