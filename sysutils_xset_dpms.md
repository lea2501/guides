# Resources
```
Arch Wiki:
https://wiki.archlinux.org/title/Display_Power_Management_Signaling
```

# Install xorg-xset package
```
# pacman -S xorg-xset
```

# Turn off DPMS
```
$ xset -dpms
```

# Disable DPMS and prevent screen from blanking
```
$ xset s off -dpms
```

# Turn off screen immediately
```
$ xset dpms force off
```

# Suspend screen
```
$ xset dpms force suspend
```
