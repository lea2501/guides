# Usage
```shell
$ quakespasm -width 1920 -height 1080 -fullscreen -basedir ~/games/quake/ -heapsize 256000 -zone 4096 -game GAME_DIR +map MAP_BSP +skill 1 +exec ~/games/quake/id1/autoexec.cfg -fitz
$ quakespasm -width 1920 -height 1080 -fullscreen -basedir ~/games/quake/ -heapsize 256000 -zone 4096 -game GAME_DIR +map MAP_BSP +skill 1 +mlook +r_particles 2 +r_lerpmodels 0 +r_lerpmove 0 +r_viewmodel_quake 1 +r_scale 3 +scr_ofsx -2.8 +scr_sbaralpha 1 +v_gunkick 2 +gamma 1.2 +contrast 1.5 +fov 85 +fog 0.02 -fitz
> D:\Games\quakespasm\quakespasm.exe -width 1920 -height 1080 -fullscreen -basedir D:\Games\quake -heapsize 256000 -zone 4096 -game GAME_DIR +map MAP_BSP +skill 1 +exec D:\Games\quake\id1\autoexec.cfg -fitz
```

## Random map bsp file game:
```shell
$ mapfile=$(find ~/games/quake/*/maps/*.bsp -type f | shuf -n 1) && quakespasm -width 1920 -height 1080 -fullscreen -basedir ~/games/quake/ -heapsize 256000 -zone 4096 -game $(awk -F/ '{print $6}' <<< "${mapfile}") +map $(basename -- "${mapfile%.*}") +skill 1 +exec ~/games/quake/id1/autoexec.cfg -fitz && echo ${mapfile}
$ mapfile=$(find ~/games/quake/*/{maps/*.bsp,pak0.pak} -type f | shuf -n 1) && quakespasm -width 1920 -height 1080 -fullscreen -basedir ~/games/quake/ -heapsize 256000 -zone 4096 -game $(awk -F/ '{print $6}' <<< "${mapfile}") +map $(basename -- "${mapfile%.*}") +skill 1 +exec ~/games/quake/id1/autoexec.cfg -fitz && echo ${mapfile}
$ mapfile=$(find ~/games/quake/*/{maps/*.bsp,pak0.pak} -type f | shuf -n 1) && if [ $(basename -- "${mapfile%.*}") != "pak0" ]; then mapname=$(basename -- "${mapfile%.*}"); else mapname=start; fi && quakespasm -width 1920 -height 1080 -fullscreen -basedir ~/games/quake/ -heapsize 256000 -zone 4096 -game $(awk -F/ '{print $6}' <<< "${mapfile}") +map ${mapname} +skill 1 +exec ~/games/quake/id1/autoexec.cfg -fitz && echo ${mapfile}
```

## MULTIPLAYER
### Server create:
```shell
$ quakespasm -width 1280 -height 720 -window -nocdaudio -basedir ~/games/quake/ -ip 192.168.19.164 -dedicated +deathmatch 0 +coop 1 +teamplay 1
```
### Server connect:
```shell
$ quakespasm -width 1280 -height 720 -window -nocdaudio -basedir ~/games/quake/ +connect 192.168.19.164 +color 0 0
```

## Console screenshot
```text
+notarget +crosshair 0 +r_drawviewmodel 0 +viewsize 120
```

## Old-school look
```text
+r_particles 2 +r_lerpmodels 0 +r_lerpmove 0 +r_viewmodel_quake 1 +r_scale 3 +scr_ofsx -2.8 +scr_sbaralpha 1 +v_gunkick 2 +gamma 1.2 +contrast 1.5 +fov 85 +fog 0.02 +gl_texturemode 1
```
