# Compress files to zip
```shell
$ zip filename.cbz *.jpg
```

# Extract the jpg from the cbz
```shell
$ unzip file.cbz
```

# Create password protected ZIP archive secure.zip from the several files
```shell
$ zip --encrypt secure.zip file1 file2 file3
```

# Create an encrypted ZIP archive secure.zip from a folder
```shell
$ zip --encrypt -r secure.zip /var/log/
```

# Non-interactive compress
```shell
$ zip -P passw0rd secure.zip file1 file2 file3
$ zip -P passw0rd -r secure.zip /var/log/
```

# Non-interactive uncompress
```shell
$ unzip -P passw0rd secure.zip
```

# Extract specific file(s) from zip file
```shell
$ unzip filename.zip path/to/file1 file2
```

# Compress multiple folders, each into its own zip archive
```shell
$ for i in */; do zip -r "${i%/}.zip" "$i"; done
$ for i in */; do zip -r "${i%/}.cbz" "$i"; done
```
