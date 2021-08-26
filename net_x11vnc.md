# Sserver
```
$ x11vnc -wait 20 -display :0 -passwd [PASSWORD] -forever -noxdamage -o ~/x11vnc.log
```

## Enable at X start, add this line to ~/.bashrc file before starting the wm/de
```
$ x11vnc -wait 20 -display :0 -passwd x1103424528 -forever -noxdamage -o ~/x11vnc.log -bg
```

# Client (tigervnc)
```
$ vncviewer [server_ip]:[port]
```
