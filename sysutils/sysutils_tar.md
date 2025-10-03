# Extract a tar.gz file
```shell
$ tar -xzvf file.tar.gz
```

# Extract a tar.bz2 file
```shell
$ tar -xjvf file.tar.bz2
```

# Extract a tar.xz file (gnu tar)
```shell
$ tar -xJvf file.tar.xz
```

# Extract a tar.xz file (bsd tar)
```shell
$ xz -d file.tar.xz
$ tar -xvf file.tar
```

# Compress tar.gz file
```shell
$ tar -czvf name-of-archive.tar.gz /path/to/directory-or-file
```

# Compress tar.bz2 file
```shell
$ tar -czvf name-of-archive.tar.gz /path/to/directory-or-file
```

# Compress Multiple Directories or Files at Once
```shell
$ tar -czvf archive.tar.gz /path/to/dir1 /path/to/dir2 /path/to/dir3/file
```

# Exclude Directories and Files
```shell
$ tar -czvf archive.tar.gz --exclude=/path/to/directory-or-file-1 --exclude=/path/to/directory-or-file-2 /path/to/dir
```

# Extract the contents of the archive to a specific directory
```shell
$ tar -xzvf archive.tar.gz -C /tmp
```

# Not-GNU tar command
```shell
$ tar -cvf - file1 file2 dir3 | gzip > archive.tar.gz
```

# Usage
```shell
$ tar -czvf /path/to/file.tar.gz --exclude=/path/to/dir/.svn /path/to/dir
```
