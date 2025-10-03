# Resources
```text
Arch Wiki:
https://wiki.archlinux.org/title/Display_Power_Management_Signaling
```

# Install xorg-xset package
```shell
# pacman -S xorg-xset
```

# Query the current settings
```shell
$ xset q
```

# Commands
```text
Command                     | Description
xset s off                  | Disable screen saver blanking
xset s 3600 3600            | Change blank time to 1 hour
xset -dpms                  | Turn off DPMS
xset s off -dpms            | Disable DPMS and prevent screen from blanking
xset dpms force off         | Turn off screen immediately
xset dpms force standby     | Standby screen
xset dpms force suspend     | Suspend screen 
```
