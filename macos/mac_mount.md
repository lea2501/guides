# Get device UUID
```shell
$ diskutil cs list
```

# Decrypt encrypted disk
```shell
$ diskutil coreStorage unlockVolume <UUID> -stdinpassphrase
```

# Show disks
```shell
$ diskutil list
```

# Mount disk
```shell
mount /dev/<disk>
mount force /dev/<disk>
```
