# Query all outputs and enable them with their default mode
```shell
$ xrandr --auto
```

# Change the LVDS1 mode to 1024x768 using
```shell
$ xrandr --output LVDS1 --mode 1024x768
```

# The refresh rate may also be changed, either at the same time or independently
```shell
$ xrandr --output LVDS1 --mode 1024x768 --rate 75
$ xrandr --output LVDS1 --rate 75
```

# To get back to the default mode
```shell
$ xrandr --output LVDS1 --auto
```

# Outputs are placed using the following options: --right-of/--left-of/--above/--below
```shell
$ xrandr --output VGA1 --right-of LVDS1
$ xrandr --output HDMI1 --above LVDS1 --auto
```

# Mirror connected display
```shell
$ xrandr --output LVDS1 --mode 1600x900 --output HDMI1 --mode 1920x1080 --same-as LVDS1
```

# Two displays
```shell
$ xrandr --output eDP1 --primary --auto --output HDMI1 --auto --above eDP1
```

# One display
```shell
$ xrandr --output eDP1 --primary --auto --output HDMI1 --off
```

# Set output brightness
```shell
$ xrandr --output HDMI1 --auto --brightness 0.2
$ xrandr --output HDMI1 --auto --brightness 1.0
```
