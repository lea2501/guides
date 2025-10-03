# Update the virus definitions
```shell
# freshclam
```

# clamscan can be used to scan certain files, home directory, or an entire system
```shell
$ clamscan SCAN_FILE
$ clamscan --recursive --infected /home # or -r -i
$ clamscan --recursive --infected --exclude-dir='^/sys|^/dev' /
```

# Quarantine files
```shell
$ clamscan --recursive --infected --move=/PATH/TO/MOVE_DIR /PATH/TO/SCAN_DIR # or -r -i
```

# Delete infected files
```shell
$ clamscan --recursive --infected --remove /PATH/TO/SCAN_DIR
```
