# Ports management

## Add /usr/ports/infrastructure/bin to PATH
```
$ cd
$ vi .profile
export PATH=$PATH:/usr/ports/infrastructure/bin
```

# Initial configuration

```
$ cd /home
$ doas mkdir ports
$ doas chown -R usuario:wsrc ports
$ cd ports
$ cd build
$ mkdir -p wrkobjdir distdir plist bulk_cookies update_cookies pkgrepo
```

# Make symlinks in /usr
```
$ cd /usr
$ doas ln -s /home/ports .
```

# Edit /etc/mk.conf
```
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

# Sign packages
```
$ doas signify -G -n -s /etc/signify/obsd-pkg.sec -p /etc/signify/obsd-pkg.pub
$ doas vi /etc/mk.conf
SIGNING_PARAMETERS=-s signify -s /etc/signify/obsd-pkg.sec
```

# Get the ports tree
```
# cd /usr
# ftp https://ftp.openbsd.org/pub/OpenBSD/$(uname -r)/ports.tar.gz
# ftp https://ftp.openbsd.org/pub/OpenBSD/$(uname -r)/SHA256.sig
# signify -C -p /etc/signify/openbsd-$(uname -r | cut -c 1,3)-base.pub -x SHA256.sig ports.tar.gz
# tar xzf ports.tar.gz
# rm ports.tar.gz SHA256.sig
```

# Update and set the ports tree
```
$ cd /usr
$ cvs -qd anoncvs@anoncvs.ca.openbsd.org:/cvs checkout -rOPENBSD_$(uname -r | tr . _) -P ports
or:
$ cvs -qd anoncvs@anoncvs.ca.openbsd.org:/cvs checkout -rOPENBSD_$(uname -r | sed 's/\./_/') -P ports
```

# Update the ports tree after
```
$ cvs -q up -rOPENBSD_6_2 -Pd
or:
$ cvs -q up -rOPENBSD_$(uname -r | tr . _) -Pd
```

# Update out-of-date packages
```
$ cd /usr/ports/<category>/<port>
$ doas echo 'FETCH_PACKAGES=Yes' >> /etc/mk.conf
$ doas make update
```

# Update out-of-date packages (bulk build) Run dpb to build packages
```
$ doas dpb -c -P pkg-install-list
```

# Search for port under port tree
```
$ cd /usr/ports && make search key=ebook
```


# Build packages from ports with dpb
## Add ports to a file
```
$ cd
$ vi pkg-install-list
editors/vim,-main,no_x11
www/firefox-esr
archivers/p7zip,-rar
multimedia/mpv
multimedia/ffmpeg2theora
graphics/ffmpeg
graphics/ffmpegthumbnailer
audio/moc
devel/geany
games/prboom-plus
games/chocolate-doom
games/quakespasm
games/nethack,no_x11
games/speeddreams
security/rarcrack
```

## Run dpb to build packages
```
$ doas dpb -c -P pkg-install-list
```

# Build individual ports
```
$ cd /usr/ports
```

# To search for a package
```
$ make search key=vim
$ cd editors/vim
```

# To see the different flavors of a certain port
```
$ make show=FLAVORS
```

# To list the different packages built by a port
```
$ make show=PKGNAMES
```

# To build and install the package
```
$ doas make install
```

# To build a specific flavor of the package
```
$ env FLAVOR="no_x11" doas make install
```

# You probably want to clean the port's default working directory after you have built the package and installed it
```
$ make clean
```

# In addition, you can also clean the working directories of all dependencies of the port with this make target
```
$ make clean=depends
```

# If you wish to remove the source distribution set(s) of the port, you would use
```
$ make clean=dist
```

# In case you have been compiling multiple flavors of the same port, you can clear the working directories of all these flavors at once using:
```
$ make clean=flavors
```

# You can also clean things up as they get built by setting a special variable. Work directories will automatically be cleaned after packages have been created.
```
$ make package BULK=Yes
```

# Uninstalling a port's package
```
$ doas make uninstall
```

# Remove any unneeded dependencies
```
$ doas pkg_delete -a
```
