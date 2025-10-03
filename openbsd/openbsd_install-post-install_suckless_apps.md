# Resources
```text
https://paedubucher.ch/articles/2020-09-05-openbsd-on-the-desktop-part-i.html
```

# Suckless apps dwm, dmenu, st, surf
```shell
$ mkdir -p ~/src
$ cd ~/src
$ git clone https://git.suckless.org/dwm
$ git clone https://git.suckless.org/dmenu
$ git clone https://git.suckless.org/st
$ git clone https://git.suckless.org/slstatus
$ git clone https://git.suckless.org/slock
```

## slock
```shell
$ cd slock
$ sed -ie 's/ -DHAVE_SHADOW_H//g' config.mk
$ sed -ie 's/#COMPATSRC/COMPATSRC/g' config.mk
$ sed -ie 's/-lcrypt//g' config.mk
$ make
# make install
```

## dwm
```shell
$ cd dwm
$ sed -i 's/^FREETYPEINC/#FREETYPEINC/g' config.mk
$ sed -i 's/^#FREETYPEINC/FREETYPEINC/g' config.mk
$ make
# make install
```

## st
```shell
$ cd st
$ sed -i 's/^#CPPFLAGS/CPPFLAGS/g' config.mk
$ sed -i 's/^#LIBS/LIBS/g' config.mk
$ sed -i 's/^#       `$(PKG_CONFIG)/       `$(PKG_CONFIG)/g' config.mk
$ make
# make install
```

## dmenu
```shell
$ cd dmenu
$ sed -i 's/^FREETYPEINC/#FREETYPEINC/g' config.mk
$ sed -i 's/^#FREETYPEINC/FREETYPEINC/g' config.mk
$ make
# make install
```

## slstatus
```shell
$ cd slstatus
(edit config.h file)
$ make
# make install
```