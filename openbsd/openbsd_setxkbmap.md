# Show list of available languages
```shell
$ ls -la /usr/X11R6/share/X11/xkb/symbols/
```

# Change to layout
```shell
$ setxkbmap -layout latam
$ setxkbmap -layout latam -variant deadtilde
```

# Add to .xinitrc or .bashrc, etc
```shell
$ setxkbmap -layout latam -variant deadtilde
```
