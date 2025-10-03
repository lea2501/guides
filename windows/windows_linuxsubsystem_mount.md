# Mount removable media: (e.g. D:)
```shell
$ sudo mkdir /mnt/d
$ sudo mount -t drvfs D: /mnt/d
```

# To safely unmount
```shell
$ sudo umount /mnt/d
```

# You can also mount network shares without smbfs
```shell
$ sudo mount -t drvfs '\\server\share' /mnt/share
```
