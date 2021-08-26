# Resources
```
https://aur.archlinux.org/packages/tor-browser
```

# Install

## Clone aur package
```
$ git clone https://aur.archlinux.org/tor-browser.git
```

## Get gpg keys:
```
$ gpg --auto-key-locate nodefault,wkd --locate-keys torbrowser@torproject.org
```

## Run makepkg
```
$ makepkg -si
```

## If you want to update tor-browser from AUR without AUR helpers you can run in a terminal
```
$ tor-browser -u
```
