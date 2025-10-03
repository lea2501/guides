# Checkout repository
```shell
$ svn checkout "http://192.168.10.90/svn/qubit-v2/qubit-portal-v4/doc/Planes"
```

# Add files to repository
```shell
$ svn add /path/to/files
```

# Delete files
```shell
$ svn delete /path/to/files
```

# Commit changes
```shell
$ svn commit
```

# Update repository
```shell
$ svn update
```

# add all unversioned files recursively to SVN
```shell
$ svn add --force * --auto-props --parents --depth infinity -q
$ svn add . --force
```
