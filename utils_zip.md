# Compress files to zip
```
$ zip filename.cbz *.jpg
```

# Extract the jpg from the cbz
```
$ unzip file.cbz
```

# Create password protected ZIP archive secure.zip from the several files
```
$ zip --encrypt secure.zip file1 file2 file3
```

# Create an encrypted ZIP archive secure.zip from a folder
```
$ zip --encrypt -r secure.zip /var/log/
```

# Non-interactive compress
```
$ zip -P passw0rd secure.zip file1 file2 file3
$ zip -P passw0rd -r secure.zip /var/log/
```

# Non-interactive uncompress
```
$ unzip -P passw0rd secure.zip
```

# Extract specific file(s) from zip file
```
$ unzip filename.zip path/to/file1 file2
```

# Compress multiple folders, each into its own zip archive
```
$ for i in */; do zip -r "${i%/}.zip" "$i"; done
$ for i in */; do zip -r "${i%/}.cbz" "$i"; done
```
