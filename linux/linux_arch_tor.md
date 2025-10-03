# Resources
```text
https://aur.archlinux.org/packages/tor-browser
```

# Install

## Clone aur package
```shell
$ git clone https://aur.archlinux.org/tor-browser.git
```

## Get gpg keys:
```shell
$ gpg --auto-key-locate nodefault,wkd --locate-keys torbrowser@torproject.org
```

## Run makepkg
```shell
$ makepkg -si
```

## If you want to update tor-browser from AUR without AUR helpers you can run in a terminal
```shell
$ tor-browser -u
```
