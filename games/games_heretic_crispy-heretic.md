# Usage
```shell
$ crispy-heretic -fullscreen -iwad ~/games/doom/maps/iwads/heretic.wad -file ~/games/doom/maps/heretic/vanilla/ ~/games/doom/mods/vanilla/palette/dimm_pal/her-pal.wad -savedir ~/games/doom/savegames/heretic/ -skill 3 -warp 1 1
```

# Random map from dir
```shell
$ export iwad=heretic && export pwadfile=$(find ~/games/doom/maps/${iwad}/vanilla/*/*.wad ! -name *tex*.* ! -name *res*.* ! -name *fix.* ! -name *demo*.* -type f | shuf -n 1) && chocolate-heretic -fullscreen -iwad ~/games/doom/maps/iwads/${iwad}.wad -file ${pwadfile} ~/games/doom/mods/vanilla/palette/dimm_pal/her-pal.wad -save ~/games/doom/savegames/${iwad}/ -skill 3 -warp $(shuf -i 1-3 -n 1) $(shuf -i 1-9 -n 1) && echo ${pwadfile}
```
