# OpenBSD - install-post: Xorg environment setup

## Window manager in .xsession

```shell
$ echo "exec cwm" >> ~/.xsession
```

Other options:

```shell
$ echo "exec openbox-session" >> ~/.xsession
$ echo "exec ck-launch-session startxfce4" >> ~/.xsession
```

---

## Keyboard layout

### Show available layouts

```shell
$ ls /usr/X11R6/share/X11/xkb/symbols/
```

### Set layout

```shell
$ setxkbmap -layout latam
$ setxkbmap -layout latam -variant deadtilde
```

### Make persistent (add to ~/.xsession before exec)

```shell
setxkbmap -layout latam -variant deadtilde
```

---

## UTF-8 / Locale

### In ~/.profile (for console login)

```shell
export LC_CTYPE="en_US.UTF-8"
```

### In ~/.xsession (for graphical login)

```shell
export LANG=en_US.UTF-8
export LC_CTYPE="en_US.UTF-8"
export GTK_IM_MODULE=xim
export LESSCHARSET=utf-8
```

### In ~/.Xdefaults (for xterm)

```text
xterm*locale: utf8
```

---

## Full .xsession example

```shell
# use UTF-8 everywhere
export LANG=en_US.UTF-8

# specify location of kshrc
export ENV=$HOME/.kshrc

# load Xresources file
xrdb -merge $HOME/.Xresources

# set background color
xsetroot -solid dimgray

# lock display after inactivity
xidle &

# clock
LANG= xclock -strftime "%a %e %b %Y %H:%M" &

# disable system beep
xset b off

# ThinkPad TrackPoint scrolling (uncomment if needed)
#xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation" 1
#xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Button" 2
#xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Axes" 6 7 4 5

# caps lock as ctrl
setxkbmap -option ctrl:nocaps

# start window manager
exec cwm
```
