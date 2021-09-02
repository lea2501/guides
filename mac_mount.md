# Get device UUID
```
$ diskutil cs list
```

# Decrypt encrypted disk
```
$ diskutil coreStorage unlockVolume <UUID> -stdinpassphrase
```

# Show disks
```
$ diskutil list
```

# Mount disk
```
mount /dev/<disk>
mount force /dev/<disk>
```
