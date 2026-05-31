# OpenBSD - Ports

## install-post: Initial ports setup

### Add infrastructure to PATH

In ~/.profile:

```shell
export PATH=$PATH:/usr/ports/infrastructure/bin
```

### Create ports directories

```shell
$ cd /home
$ doas mkdir ports
$ doas chown -R $USER:wsrc ports
$ cd ports
$ mkdir -p build/{wrkobjdir,distdir,plist,bulk_cookies,update_cookies,pkgrepo}
```

### Symlink in /usr

```shell
$ cd /usr
$ doas ln -s /home/ports .
```

### Configure /etc/mk.conf

```shell
$ doas vi /etc/mk.conf
SUDO=/usr/bin/doas
WRKOBJDIR=/home/ports/build/wrkobjdir
DISTDIR=/home/ports/build/distdir
PLIST_DB=/home/ports/build/plist
BULK_COOKIES_DIR=/home/ports/build/bulk_cookies
UPDATE_COOKIES_DIR=/home/ports/build/update_cookies
PACKAGE_REPOSITORY=/home/ports/build/pkgrepo
FETCH_PACKAGES=Yes
```

### Sign packages (optional)

```shell
$ doas signify -G -n -s /etc/signify/obsd-pkg.sec -p /etc/signify/obsd-pkg.pub
$ doas vi /etc/mk.conf
SIGNING_PARAMETERS=-s signify -s /etc/signify/obsd-pkg.sec
```

---

## Get the ports tree

### From tarball (quickest)

```shell
# cd /usr
# ftp https://ftp.openbsd.org/pub/OpenBSD/$(uname -r)/ports.tar.gz
# ftp https://ftp.openbsd.org/pub/OpenBSD/$(uname -r)/SHA256.sig
# signify -C -p /etc/signify/openbsd-$(uname -r | cut -c 1,3)-base.pub -x SHA256.sig ports.tar.gz
# tar xzf ports.tar.gz
# rm ports.tar.gz SHA256.sig
```

### From CVS (stable)

```shell
$ cd /usr
$ cvs -qd anoncvs@anoncvs.ca.openbsd.org:/cvs checkout -rOPENBSD_$(uname -r | tr . _) -P ports
```

### From CVS (-current)

```shell
$ cd /usr
$ cvs -qd anoncvs@anoncvs.ca.openbsd.org:/cvs checkout -P ports
```

---

## Update the ports tree

### Stable

```shell
$ cd /usr/ports
$ cvs -q up -Pd -rOPENBSD_$(uname -r | tr . _)
```

### -current

```shell
$ cd /usr/ports
$ cvs -q up -Pd -A
```

---

## Building ports

### Search for a port

```shell
$ cd /usr/ports && make search key=vim
```

### See available flavors

```shell
$ cd /usr/ports/<category>/<port>
$ make show=FLAVORS
```

### List package names built by a port

```shell
$ make show=PKGNAMES
```

### Build and install

```shell
$ cd /usr/ports/<category>/<port>
$ doas make install
```

### Build a specific flavor

```shell
$ env FLAVOR="no_x11" doas make install
```

### Clean up

```shell
$ make clean
$ make clean=depends
$ make clean=dist
$ make clean=flavors
```

### Uninstall a port

```shell
$ doas make uninstall
```

### Remove unneeded dependencies

```shell
$ doas pkg_delete -a
```

---

## Bulk building with dpb

### Create a package list file

```shell
$ vi ~/pkg-install-list
editors/vim,-main,no_x11
www/firefox-esr
multimedia/mpv
graphics/ffmpeg
```

### Run dpb

```shell
$ doas dpb -c -P ~/pkg-install-list
```

---

## Update out-of-date packages from ports

```shell
$ cd /usr/ports/<category>/<port>
$ doas make update
```

### Auto-build with package fetching

```shell
$ make package BULK=Yes
```
