# Resources
```text
https://dukeworld.com/eduke32/synthesis/latest/
```

# Compilation
## Prerequisites:
### Debian
```shell
# apt-get install build-essential nasm libgl1-mesa-dev libglu1-mesa-dev libsdl1.2-dev libsdl-mixer1.2-dev libsdl2-dev libsdl2-mixer-dev flac libflac-dev libvorbis-dev libvpx-dev libgtk2.0-dev freepats
```
### Arch
```shell
# pacman -S sdl2_mixer libvpx gtk2 gendesk glu
```

## Compilation eduke32 with fury support (snapshots)
```shell
$ cd ~/src/
$ curl -OL "https://dukeworld.com/eduke32/synthesis/latest/eduke32_src_20210824-9582-072bd40eb.tar.xz"
$ tar -xxvf eduke32_src_20210824-9582-072bd40eb.tar.xz
$ cd eduke32_20210824-9582-072bd40eb/
$ make SDL_TARGET=2 FURY=1
```

## Compilation eduke32 with fury support (git)
```shell
$ cd ~/src/
$ git clone https://voidpoint.io/terminx/eduke32.git
$ cd eduke32
$ make SDL_TARGET=2 FURY=1
```

# Usage
```shell
$ ~/src/eduke32/fury -grp fury.grp -game_dir ~/games/ionfury/
```
