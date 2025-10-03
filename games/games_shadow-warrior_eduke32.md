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

## Compilation eduke32 with shadow warrior support (snapshots):
```shell
$ cd ~/src/
$ curl -OL "https://dukeworld.com/eduke32/synthesis/latest/eduke32_src_20210824-9582-072bd40eb.tar.xz"
$ tar -xxvf eduke32_src_20210824-9582-072bd40eb.tar.xz
$ cd eduke32_20210824-9582-072bd40eb/
$ make voidsw
```

## Compilation eduke32 with shadow warrior support (git)
```shell
$ cd ~/src/
$ git clone https://voidpoint.io/terminx/eduke32.git
$ cd eduke32
$ make voidsw
```

# Usage
```shell
$ ~/src/eduke32/voidsw -grp sw.grp -game_dir ~/games/shadow_warrior/
```