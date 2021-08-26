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
