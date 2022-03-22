# Resources
```
https://angband.readthedocs.io/en/latest/hacking/compiling.html
```

# compile
```
$ mkdir -p ~/src
$ cd ~/src
# apt-get install autoconf gcc libc6-dev libncursesw5-dev libx11-dev #(debian/devuan)
# pacman -S autoconf gcc ncurses xorg-fonts-misc #(arch)
$ git clone https://github.com/angband/angband.git
$ sh autogen.sh
$ ./configure --with-no-install
$ make clean
$ make
```

# Launch game in ncurses with 4 subwindows and user 'User':
```
$ ~/src/angband/src/angband -uUser -mgcu -- n4
```
