# Mount removable media: (e.g. D:)
```
$ sudo mkdir /mnt/d
$ sudo mount -t drvfs D: /mnt/d
```

# To safely unmount
```
$ sudo umount /mnt/d
```

# You can also mount network shares without smbfs
```
$ sudo mount -t drvfs '\\server\share' /mnt/share
```
