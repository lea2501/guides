# Usage
Add this to /etc/X11/xorg.conf.d/30-touchpad.conf file
```
$ cat /etc/X11/xorg.conf.d/30-touchpad.conf
Section "InputClass"
    Identifier "touchpad"
        Driver "libinput"
    MatchIsTouchpad "on"
    Option "tapping" "on"
    Option "AccelProfile" "adaptive"
    Option "TappingButtonMap" "lrm"
EndSection
```
