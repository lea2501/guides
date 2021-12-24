# Dependencies
## Arch
```
# pacman -S base-devel scons sdl sdl_image sdl_mixer physfs
```
## Debian
```
# apt-get install build-essential scons libsdl1.2-dev libsdl-image1.2-dev libsdl-mixer1.2-dev libphysfs-dev
```

# Compile
```
$ mkdir -p ~/src
$ cd ~/src
$ git clone https://github.com/dxx-rebirth/dxx-rebirth.git
$ cd dxx-rebirth
```

## Compile d1x-rebirth
```
$ scons sdl2=1 d1x=1 builddir_prefix=build/
```

## Compile d2x-rebirth
```
$ scons sdl2=1 d2x=1 builddir_prefix=build/
```

## Compile both (default)
```
$ scons sdl2=1 builddir_prefix=build/
```

# Usage
```
$ d1x-rebirth -hogdir ~/PATH/TO/GAME_DIR -window -notitles -nomovies
$ d2x-rebirth -hogdir ~/PATH/TO/GAME_DIR -window -notitles -nomovies
```
