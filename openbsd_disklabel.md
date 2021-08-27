# List disks
```
# sysctl hw.disknames
```

# Create disk partition
```
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
```
# newfs_msdos -F 32 /dev/rsd2i
```
