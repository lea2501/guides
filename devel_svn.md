# Checkout repository
```
$ svn checkout "http://192.168.10.90/svn/qubit-v2/qubit-portal-v4/doc/Planes"
```

# Add files to repository
```
$ svn add /path/to/files
```

# Delete files
```
$ svn delete /path/to/files
```

# Commit changes
```
$ svn commit
```

# Update repository
```
$ svn update
```

# add all unversioned files recursively to SVN
```
$ svn add --force * --auto-props --parents --depth infinity -q
$ svn add . --force
```
