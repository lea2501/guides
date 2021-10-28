# Installation:
## Devuan system
```
# dpkg --add-architecture i386
$ wget -nc https://dl.winehq.org/wine-builds/winehq.key
# apt-key add winehq.key
```
Add wine repository
```
# vim /etc/apt/sources.list

deb https://dl.winehq.org/wine-builds/debian/ bullseye main
```
Install wine
```
# apt install --install-recommends winehq-stable
# apt install --install-recommends winehq-devel
# apt install --install-recommends winehq-staging
```


# Run without internet connection:
```
$ systemd-run --scope -p IPAddressDeny=any wine myapp.exe
```

# Install windows game manually
```
$ mkdir -p ~/Games/other/<game>
$ export WINEPREFIX=~/Games/other/<game>
$ cd path/to/game/installer/
$ wine game-installer.exe
```
(You can now add the game to lutris and launch from there, adding the game executable and prefix)
