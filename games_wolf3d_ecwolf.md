# Resources
```
https://maniacsvault.net/ecwolf/wiki/Compile_ECWolf_on_Linux
```

# Compiling
```
# pacman -S --needed gcc make cmake sdl2 sdl2_mixer sdl2_net git zlib bzip2 libjpeg-turbo gtk2 sdl sdl_mixer sdl_net
$ mkdir -p ~/src
$ cd ~/src
$ git clone https://bitbucket.org/ecwolf/ecwolf.git
$ mkdir -pv ecwolf/build
$ cd ~/src/ecwolf/build
$ cmake .. -DCMAKE_BUILD_TYPE=Release -DGPL=ON
$ make
```

# Copy game data
```
$ mkdir -p ~/.local/share/ecwolf
$ ln -s ~/games/wolf3d/wolf3d/*.wl6 ~/.local/share/ecwolf/
$ cp -r ~/games/wolf3d/spear ~/.local/share/ecwolf/
```

# Uninstallation
```
$ sudo rm -rfv /usr/games/ecwolf
$ sudo rm -fv /usr/bin/ecwolf
$ sudo rm -rfv /usr/games/ecwolf-alpha
$ sudo rm -fv /usr/bin/ecwolf-alpha
```

# Usage
```
$ ~/src/ecwolf/build/ecwolf --fullscreen --res 1920 1080 --nowait --file ~/games/wolf3d/mods/ecwolf/astrostein_spifferaneous_edition/astrostein_spiff_hd.pk3
```
