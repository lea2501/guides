# Server
```shell
$ x11vnc -wait 20 -display :0 -passwd [PASSWORD] -forever -noxdamage -o ~/x11vnc.log
```

## Enable at X start, add this line to ~/.bashrc file before starting the wm/de
```shell
$ x11vnc -wait 20 -display :0 -passwd [PASSWORD] -forever -noxdamage -o ~/x11vnc.log -bg
```

# Client (tigervnc)
```shell
$ vncviewer [server_ip]:[port]
```

# Show cursor on macos
```shell
$ vncviewer -DotWhenNoCursor [server_ip]
```
