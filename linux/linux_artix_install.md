# Pre Install - Get iso
https://artixlinux.org/download.php

# Prepare usb
https://wiki.archlinux.org/title/USB_flash_installation_medium
```shell
# dd bs=4M if=path/to/archlinux-version-x86_64.iso of=/dev/disk/by-id/usb-My_flash_drive conv=fsync oflag=direct status=progress
```

# Installation
## set keyboard to spanish
```shell
# localectl list-keymaps
# loadkeys es
```

## boot and enable wifi
```shell
$ sudo rfkill unblock wifi
$ sudo ip link set wlan0 up
$ connmanctl
> agent on
> scan wifi
> services
> connect [wifi_name]
> quit
```

## download artix-installer
https://github.com/Zaechus/artix-installer
```shell
$ curl -OL https://github.com/Zaechus/artix-installer/archive/v2.2.0.tar.gz
$ tar xzf v2.2.0.tar.gz
$ cd artix-installer-2.2.0
$ ./install.sh
```

# Post Install install Desktop Environment
## install Gnome
https://notabug.org/lea2501/scripts/raw/main/arch/post_install_optional/artix-install_gnome.sh
```shell
$ sudo pacman -S gnome gnome-tweaks gdm gdm-dinit \
  networkmanager networkmanager-dinit networkmanager-openconnect \
  gnome-photos gnome-screenshot gnome-usage \
  arc-gtk-theme eog file-roller gucharmap
```

### Remove connman
```shell
$ sudo pacman -Rdd connman connman-dinit
```

### Enable services
https://wiki.artixlinux.org/Main/Dinit
```shell
$ sudo dinitctl enable NetworkManager
$ sudo dinitctl enable gdm
```

## Add user
https://wiki.archlinux.org/title/Users_and_groups
```shell
# useradd -m USERNAME
# passwd archie
```

## Add archlinux mirrors
https://notabug.org/lea2501/scripts/raw/main/arch/post_install_optional/artix-add_arch_linux_repositories_support.sh

## enable pipewire at boot
https://wiki.artixlinux.org/Site/PipewireInsteadPulseaudio

https://wiki.archlinux.org/title/PipeWire

https://notabug.org/lea2501/scripts/raw/main/startpipewire

## Disable suspend on laptop lid close
https://forum.artixlinux.org/index.php/topic,4189.0.html

https://notabug.org/lea2501/scripts/raw/main/arch/post_install_optional/artix_disable_suspend_on_lid_close.sh