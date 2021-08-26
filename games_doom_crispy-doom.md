# Usage:
```
$ crispy-doom -fullscreen -iwad ~/games/doom/wads/iwads/doom2.wad -file ~/games/doom/wads/doom2/vanilla/ ~/games/doom/mods/vanilla/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/jovian_palette/JoyPal.wad ~/games/doom/mods/vanilla/smoothed/smoothed.wad -savedir ~/games/doom/savegames/doom2/ -skill 3 -warp 01
$ crispy-doom -fullscreen -iwad ~/games/doom/wads/original/doom.wad -file ~/games/doom/wads/doom/vanilla/ ~/games/doom/mods/vanilla/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/jovian_palette/JoyPal.wad ~/games/doom/mods/vanilla/smoothed/smoothed.wad -savedir ~/games/doom/savegames/doom/ -skill 3 -warp 1 1
$ crispy-heretic -fullscreen -iwad ~/games/doom/wads/iwads/heretic.wad -file ~/games/doom/wads/heretic/vanilla/carnage_galore_II/ichor.wad ~/games/doom/mods/vanilla/jovian_palette/JoyPal.wad -savedir ~/games/doom/savegames/heretic/ -skill 3 -warp 1 1
$ crispy-hexen -fullscreen -iwad ~/games/doom/wads/iwads/hexen.wad -file ~/games/doom/wads/hexen/vanilla/ ~/games/doom/mods/vanilla/jovian_palette/JoyPal.wad -savedir ~/games/doom/savegames/hexen/ -skill 3 -warp 1 1
```

## Maps:
```
$ crispy-doom -fullscreen -iwad ~/games/doom/wads/original/doom.wad -merge ~/games/doom/wads/doom/zdoom/sigil/sigil_compat.wad ~/games/doom/wads/doom/zdoom/sigil/sigil_shreds_compat.wad -file ~/games/doom/mods/vanilla/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/jovian_palette/JoyPal.wad ~/games/doom/mods/vanilla/smoothed/smoothed.wad -savedir ~/games/doom/savegames/doom/ -skill 3 -warp 3 1
```

## Windows
```
$ D:\Games\crispy-doom\crispy-doom.exe -fullscreen -iwad D:\Games\doom\wads\original\doom2.wad -file D:\Games\doom\wads\doom2\vanilla\ D:\Games\doom\mods\vanilla\pk_doom_sfx\pk_doom_sfx_20120224.wad D:\Games\doom\mods\vanilla\jovian_palette\JoyPal.wad -savedir D:\Games\doom\savegames\doom2\ -skill 3 -warp 01
$ D:\Games\crispy-doom\crispy-doom.exe -fullscreen -iwad D:\Games\doom\wads\original\doom.wad -merge D:\Games\doom\wads\doom\zdoom\sigil\sigil_compat.wad D:\Games\doom\wads\doom\zdoom\sigil\sigil_shreds_compat.wad D:\Games\doom\mods\vanilla\pk_doom_sfx\pk_doom_sfx_20120224.wad D:\Games\doom\mods\vanilla\jovian_palette\JoyPal.wad -savedir D:\Games\doom\savegames\doom\ -skill 3 -warp 1 1
```

# Random map from dir:
```
$ export iwad=doom2 && export pwadfile=$(find ~/games/doom/wads/${iwad}/vanilla/*/*.wad ! -name *tex*.* ! -name *res*.* ! -name *a.* ! -name *b.* ! -name *fix.* ! -name *demo*.* -type f | shuf -n 1) && crispy-doom -fullscreen -iwad ~/games/doom/wads/original/${iwad}.wad -file ${pwadfile} ~/games/doom/mods/vanilla/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/jovian_palette/JoyPal.wad ~/games/doom/mods/vanilla/smoothed/smoothed.wad -save ~/games/doom/savegames/${iwad}/ -skill 3 -warp 01 && echo ${pwadfile}
$ crispy-doom -fullscreen -iwad ~/games/doom/wads/iwads/doom2.wad -file $(find ~/games/doom/wads/doom2/vanilla/*/*.wad ! -name *tex*.* ! -name *res*.* ! -name *a.* ! -name *b.* ! -name *fix.* ! -name *demo*.* -type f | shuf -n 1) ~/games/doom/mods/vanilla/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/jovian_palette/JoyPal.wad ~/games/doom/mods/vanilla/smoothed/smoothed.wad -save ~/games/doom/savegames/doom2/ -skill 3 -warp 01
```

# Random map from wad also:
```
$ crispy-doom -fullscreen -iwad ~/games/doom/wads/iwads/doom2.wad -file $(find ~/games/doom/wads/doom2/vanilla/*/*.wad ! -name *tex*.* ! -name *res*.* ! -name *a.* ! -name *b.* ! -name *fix.* ! -name *demo*.* -type f | shuf -n 1) ~/games/doom/mods/vanilla/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/jovian_palette/JoyPal.wad ~/games/doom/mods/vanilla/smoothed/smoothed.wad -save ~/games/doom/savegames/doom2/ -skill 3 -warp $(shuf -i 1-30 -n 1)
$ crispy-doom -fullscreen -iwad ~/games/doom/wads/original/doom.wad -file $(find ~/games/doom/wads/doom/vanilla/*/*.wad ! -name *tex*.* ! -name *res*.* ! -name *a.* ! -name *b.* ! -name *fix.* ! -name *demo*.* -type f | shuf -n 1) ~/games/doom/mods/vanilla/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/jovian_palette/JoyPal.wad ~/games/doom/mods/vanilla/smoothed/smoothed.wad -save ~/games/doom/savegames/doom/ -skill 3 -warp $(shuf -i 1-4 -n 1) $(shuf -i 1-9 -n 1)
$ crispy-doom -fullscreen -iwad ~/games/doom/wads/original/tnt.wad -file $(find ~/games/doom/wads/tnt/vanilla/*/*.wad ! -name *tex*.* ! -name *res*.* ! -name *a.* ! -name *b.* ! -name *fix.* ! -name *demo*.* -type f | shuf -n 1) ~/games/doom/mods/vanilla/jovian_palette/JoyPal.wad -save ~/games/doom/savegames/tnt/ -skill 3 -warp $(shuf -i 1-30 -n 1)
$ crispy-doom -fullscreen -iwad ~/games/doom/wads/original/plutonia.wad -file $(find ~/games/doom/wads/plutonia/vanilla/*/*.wad ! -name *tex*.* ! -name *res*.* ! -name *a.* ! -name *b.* ! -name *fix.* ! -name *demo*.* -type f | shuf -n 1) ~/games/doom/mods/vanilla/jovian_palette/JoyPal.wad -save ~/games/doom/savegames/plutonia/ -skill 3 -warp $(shuf -i 1-30 -n 1)
```

# Doom 2 - Random slige wad and random map:
```
$ crispy-doom -fullscreen -iwad ~/games/doom/wads/iwads/doom2.wad -file $(find ~/games/doom/wads/slige/megawad*.wad -type f | shuf -n 1) ~/games/doom/mods/vanilla/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/jovian_palette/JoyPal.wad ~/games/doom/mods/vanilla/smoothed/smoothed.wad -save ~/games/doom/savegames/doom2/ -skill 3 -warp $(shuf -i 1-30 -n 1)
```
