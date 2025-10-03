# Auto remove unused packages
```shell
# apt-get remove --autoremove package_name
```

# To see your installed packages
```shell
# apt list --installed|less
```

# Show installed packages size by dir
```shell
# dpkg-query -Wf '${Installed-Size}\t${Package}\n' | sort -n
```

# Clear apt cache
```shell
# apt-get clear
```

# Show top sized dirs:
```shell
$ du -a /var | sort -n -r | head -n 10
```

# No install recommends for packages
```shell
# apt-get --no-install-recommends install package
```

# Forbid installation of specific packages
As in Debian we can use apt-pinning for version and installation control in Ubuntu too.
To block the installation of a given package we may put the following lines in /etc/apt/preferences
```text
Package: <nameofpackage>
Pin: origin ""
Pin-Priority: -1

By giving a negative priority for this pin we will block the installation of <nameofpackage> from any origin. Of course we could also use apt-pinning to pin a certain package version or origin.
Before you proceed it is strongly recommended to read the documentation given above and the manpage from apt_preferences because errors in these files are not checked by apt and if they occur it may break your package management.

In the Package:-line, you can list multiple packages separated with spaces, like this: Package: metacity metacity-common libmetacity-private0a. (Seems like patterns like Package: metacity* are also possible)
```

# Backports
## Add backports to your sources.list
```text
# /etc/apt/sources.list.d/devuan-stable-backports.list

deb     http://auto.mirror.devuan.org/merged jessie-backports main
deb-src http://auto.mirror.devuan.org/merged jessie-backports main

deb http://ftp.debian.org/debian jessie-backports main
deb-src http://ftp.debian.org/debian jessie-backports main
```

## Install a package from backports
```shell
# apt -t stretch-backports install <package>
```
