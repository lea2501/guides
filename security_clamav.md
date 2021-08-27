# Update the virus definitions
```
# freshclam
```

# clamscan can be used to scan certain files, home directory, or an entire system
```
$ clamscan SCAN_FILE
$ clamscan --recursive --infected /home # or -r -i
$ clamscan --recursive --infected --exclude-dir='^/sys|^/dev' /
```

# Quarantine files
```
$ clamscan --recursive --infected --move=/PATH/TO/MOVE_DIR /PATH/TO/SCAN_DIR # or -r -i
```

# Delete infected files
```
$ clamscan --recursive --infected --remove /PATH/TO/SCAN_DIR
```
