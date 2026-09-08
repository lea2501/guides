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

# List files in an archive
```shell
$ tar -tf archive.tar
```

# Create an xz-compressed archive
```shell
$ tar -cJvf archive.tar.xz directory/
```

# Add or update files in an uncompressed archive
```shell
$ tar -rvf archive.tar file.txt
$ tar -uvf archive.tar file.txt
```

# Delete files from an uncompressed archive
```shell
$ tar --delete -vf archive.tar file1 file2
```

# Create a tar archive and encrypt it with GPG
```shell
$ tar -cvf - file1.txt file2.txt directory/ | gpg -c -o archive.tar.gpg
```

# Decrypt and extract an encrypted tar archive
```shell
$ gpg -d archive.tar.gpg | tar -xvf -
```
