# Usage
## Get mono family fonts installed
```text
$ fc-list :scalable=true:spacing=mono: family
```

## Set font in command line
```shell
$ xterm -fa 'Terminus' -fs 24 +sb
$ xterm -bg black -fg white -fa Inconsolata-10 +sb
$ xterm -bg black -fg white -fa DejaVu\ Sans\ Mono-18 +sb
$ xterm -bg black -fg white -fa fixed +sb
```

## Permanent configuration
After every change to .Xresources perform the following command for changes to take effect
```shell
$ xrdb -merge ~/.Xdefaults
```
