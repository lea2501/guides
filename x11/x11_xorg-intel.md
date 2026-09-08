# Xorg - Intel graphics configuration

Example `/etc/X11/xorg.conf.d/20-intel.conf` configuration using SNA and DRI 3:

```text
Section "Device"
    Identifier "Intel Graphics"
    Driver "intel"
    Option "AccelMethod" "sna"
    Option "DRI" "3"
EndSection
```
