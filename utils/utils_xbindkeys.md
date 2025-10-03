# Generate a configuration file
```shell
$ xbindkeys -d > ~/.xbindkeysrc
```

# Show keycode for a key or key combination
```shell
$ xbindkeys -mk
```

# Restart xbindkeys to reload config
```shell
$ killall -HUP xbindkeys
```

# Basic command syntax
```text
#Comment about the entry
"command"
Modifier + key

#Mouse plus control launches gaim
"gaim"
Control + b:3 + Release

Window management with xdotool
  # apt install xdotool xbindkeys x11-utils xinput
Add this to ~/.xbindkeysrc
"xdotool getactivewindow windowminimize"
b:2
```
