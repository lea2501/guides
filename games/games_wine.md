# Wine
## Installation:
### Devuan system
```shell
# dpkg --add-architecture i386
$ wget -nc https://dl.winehq.org/wine-builds/winehq.key
# apt-key add winehq.key
```
Add wine repository
```shell
# vim /etc/apt/sources.list

deb https://dl.winehq.org/wine-builds/debian/ bullseye main
```
Install wine
```shell
# apt install --install-recommends winehq-stable
# apt install --install-recommends winehq-devel
# apt install --install-recommends winehq-staging
```


# Lutris
## Install (sources)
```shell
$ mkdir -p ~/src
$ cd ~/src
$ git clone https://github.com/lutris/lutris.git
$ ~/src/lutris/bin/lutris
```

## Install (arch)
```shell
$ sudo pacman -S lutris
```

(Add gog/steam/humble store account to lutris)

# DXVK
## Install dxvk (arch)
```shell
$ cd ~/aur
$ git clone https://aur.archlinux.org/dxvk-bin.git
$ cd dxvk-bin/
$ makepkg -sic
```

(Install windows game via lutris)

## Add dxvk support for wine prefix
```shell
$ export WINEPREFIX=/path/to/game/dir   # ~/Games/other/<game>
$ setup_dxvk install
```

## Remove dxvk support for wine prefix
```shell
$ export WINEPREFIX=/path/to/game/dir   # ~/Games/other/<game>
$ setup_dxvk uninstall
```

# To avoid internet connection in wine add this to app under 'Runner options > Custom Wine executable'
```shell
$ systemd-run --scope -p IPAddressDeny=any wine myapp.exe
```


# Install windows game manually
```shell
$ mkdir -p ~/Games/other/<game> && export WINEPREFIX=~/Games/other/<game>
$ cd path/to/game/installer/
$ wine game-installer.exe
```
(You can now add the game to lutris and launch from there, adding the game executable and prefix)
