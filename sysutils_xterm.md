# Usage
## Get mono family fonts installed
```
$ fc-list :scalable=true:spacing=mono: family
```

## Set font in command line
```
$ xterm -fa 'Terminus' -fs 24 +sb
$ xterm -bg black -fg white -fa Inconsolata-10 +sb
$ xterm -bg black -fg white -fa DejaVu\ Sans\ Mono-18 +sb
$ xterm -bg black -fg white -fa fixed +sb
```

## Permanent configuration
After every change to .Xresources perform the following command for changes to take effect
```
$ xrdb -merge ~/.Xdefaults
```
