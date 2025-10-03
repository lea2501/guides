# Install XFCE
The consolekit2 package is needed to allow the user to log out of xfce4 without using terminal commands. ConsoleKit essentially wraps xfce4 in a session with some extra permissions.
```shell
# pkg_add -v consolekit2 xfce xfce-extras
```

# Add xfce to .xsession (graphical login) or .xinitrc (startx login) as user
```shell
$ vim .xsession
exec ck-launch-session startxfce4
```
