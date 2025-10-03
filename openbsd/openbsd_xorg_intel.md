# TearFree on Intel graphics
Set this settings on /etc/X11/xorg.conf
```text
Default SNA method (Sandybridge's New Acceleration):
Section "Device"
   Identifier  "Intel Graphics"
   Driver      "intel"
   Option      "AccelMethod"
   Option      "TearFree"  "true"
EndSection
```

With UXA AccelMethod (Unified Acceleration Architecture is the mature backend)
```text
Section "Device"
   Identifier  "Intel Graphics"
   Driver      "intel"
   Option      "AccelMethod"  "uxa"
EndSection
```
