# Setting up UTF-8

## Environment variables in ~/.profile:
```
export LC_CTYPE=en_US.UTF-8
export GTK_IM_MODULE=xim # without this GTK apps will use their own compose key settings
export LESSCHARSET=utf-8 # not strictly necessary, but for when you view Unicode files in less
```

## Xterm settings in ~/.Xdefaults
```
xterm*locale: utf8
```
