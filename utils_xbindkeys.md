# Generate a configuration file
```
$ xbindkeys -d > ~/.xbindkeysrc
```

# Show keycode for a key or key combination
```
$ xbindkeys -mk
```

# Restart xbindkeys to reload config
```
$ killall -HUP xbindkeys
```

# Basic command syntax
```
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
