# Show list of available languages
```
$ ls -la /usr/X11R6/share/X11/xkb/symbols/
```

# Change to layout
```
$ setxkbmap -layout latam
$ setxkbmap -layout latam -variant deadtilde
```

# Add to .xinitrc or .bashrc, etc
```
$ setxkbmap -layout latam -variant deadtilde
```
