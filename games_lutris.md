# Install
```
$ sudo pacman -S lutris
```

(Add gog/steam/humble store account to lutris)

# Install dxvk aur package for some games
```
$ cd ~/aur
$ git clone https://aur.archlinux.org/dxvk-bin.git
$ cd dxvk-bin/
$ makepkg -sic
```

(Install windows game via lutris)

# To add dxvk support for wine prefix
```
$ export WINEPREFIX=/path/to/game/dir
$ setup_dxvk install
```

# To remove dxvk support for wine prefix
```
$ setup_dxvk uninstall
```

# To avoid internet connection in wine add this to app under 'Runner options > Custom Wine executable'
```
$ systemd-run --scope -p IPAddressDeny=any wine
```
