# Compilation
```
$ mkdir -p ~/src
$ cd ~/src
$ git clone git://disenchant.net/tyrquake
```

## Linux
```
$ make USE_SDL=Y VID_TARGET=sdl SND_TARGET=sdl
```

## OpenBSD
```
Dont work:
$ gmake USE_SDL=Y TARGET_OS=UNIX
$ gmake VID_TARGET=sdl SND_TARGET=sdl IN_TARGET=sql CD_TARGET=bsd
$ gmake TARGET_OS=UNIX TARGET_UNIX=openbsd
```
Working
```
$ gmake TARGET_OS=UNIX TARGET_UNIX=openbsd
```

# Usage
```
$ ~/src/tyrquake/bin/tyr-quake -heapsize 256000 -width 960 -height 720 -window -basedir ~/games/quake/ -game id1 +map e$(shuf -i 1-4 -n 1)m$(shuf -i 1-7 -n 1) +skill 1 +r_maxsurfs 9999 +r_maxedges 9999 +fov 90
$ ~/src/tyrquake/bin/tyr-quake -heapsize 256000 -width 960 -height 720 -window -basedir ~/games/quake/ -game GAME_DIR +map MAP_BSP +skill 1 +r_maxsurfs 9999 +r_maxedges 9999 +fov 90
```
