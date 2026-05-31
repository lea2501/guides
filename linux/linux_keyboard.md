# Linux - Keyboard layout

## Console (Debian/Devuan)

```shell
$ sudo vim /etc/default/keyboard
```

## X11

```shell
$ setxkbmap -layout latam
$ setxkbmap -layout latam -variant deadtilde
$ setxkbmap -model pc105 -layout latam
```

### Make persistent (add to .xinitrc or .xsession)

```shell
setxkbmap -layout latam -variant deadtilde
```
