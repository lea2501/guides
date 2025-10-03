# Usage
```shell
$ chocolate-hexen -fullscreen -iwad ~/games/doom/maps/iwads/hexen.wad -file ~/games/doom/maps/hexen/vanilla/ ~/games/doom/mods/vanilla/palette/dimm_pal/hex-pal.wad -savedir ~/games/doom/savegames/hexen/ -skill 3 -warp 1 1
```
## hexdd
```shell
$ chocolate-hexen -fullscreen -iwad ~/games/doom/maps/iwads/hexen.wad -file ~/games/doom/maps/iwads/hexdd.wad ~/games/doom/mods/vanilla/palette/dimm_pal/hex-pal.wad -savedir ~/games/doom/savegames/hexen/ -skill 3 -warp 1 1
```

# Random map from dir
```shell
$ export iwad=hexen && export pwadfile=$(find ~/games/doom/maps/${iwad}/vanilla/*/*.wad ! -name *tex*.* ! -name *res*.* ! -name *fix.* ! -name *demo*.* -type f | shuf -n 1) && chocolate-hexen -fullscreen -iwad ~/games/doom/maps/iwads/${iwad}.wad -file ${pwadfile} ~/games/doom/mods/vanilla/palette/dimm_pal/hex-pal.wad -save ~/games/doom/savegames/${iwad}/ -skill 3 -warp $(shuf -i 1-3 -n 1) $(shuf -i 1-9 -n 1) && echo ${pwadfile}
```
