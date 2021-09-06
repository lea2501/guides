# Extract a tar.gz file
```
$ tar -xzvf file.tar.gz
```

# Extract a tar.bz2 file
```
$ tar -xjvf file.tar.bz2
```

# Compress tar.gz file
```
$ tar -czvf name-of-archive.tar.gz /path/to/directory-or-file
```

# Compress tar.bz2 file
```
$ tar -czvf name-of-archive.tar.gz /path/to/directory-or-file
```

# Compress Multiple Directories or Files at Once
```
$ tar -czvf archive.tar.gz /path/to/dir1 /path/to/dir2 /path/to/dir3/file
```

# Exclude Directories and Files
```
$ tar -czvf archive.tar.gz --exclude=/path/to/directory-or-file-1 --exclude=/path/to/directory-or-file-2 /path/to/dir
```

# Extract the contents of the archive to a specific directory
```
$ tar -xzvf archive.tar.gz -C /tmp
```

# Not-GNU tar command
```
$ tar -cvf - file1 file2 dir3 | gzip > archive.tar.gz
```

# Usage
```
$ tar -czvf /path/to/file.tar.gz --exclude=/path/to/dir/.svn /path/to/dir
```
