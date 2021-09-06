# Install normally from stable (or from latest snapshot)

# Download latest bsd.rd from https://cdn.openbsd.org/pub/OpenBSD/snapshots/amd64/bsd.rd

# Reboot and after disk encryption passphrase, at 'boot>' prompt, type 'boot bsd.rd'

# Upgrade, When it asks for a path, change it to '/pub/OpenBSD/snapshots/amd64/'

# Reboot and run sysmerge
```
# sysmerge
```

# Change PKG_PATH
```
$ export PKG_PATH=http://fastly.cdn.openbsd.org/pub/OpenBSD/snapshots/packages/amd64/
```

# Add this to ~/.profile and /root/.profile
```
PKG_PATH=http://fastly.cdn.openbsd.org/pub/OpenBSD/snapshots/packages/amd64/
export PKG_PATH
```

# Upgrade installed packages
```
# pkg_add -uv
```
