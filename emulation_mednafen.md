# Usage
```
$ mednafen -video.driver opengl -video.fs 0 -psx.stretch aspect -psx.xres 0 -psx.yres 0 /path/to/file
```

# Fix no sound
(https://askubuntu.com/questions/562369/alsa-and-mednafen-no-sound)
```
add 'sounddriver sdl' and 'sounddevice sexyal-literal-default' lines at the end of the ~/.mednafen/mednafen.cfg file
```
