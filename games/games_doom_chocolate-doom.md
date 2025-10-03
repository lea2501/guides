# Usage
```shell
$ chocolate-doom -fullscreen -config ~/games/doom/config/chocolate/config.ini -iwad ~/games/doom/maps/iwads/doom2.wad -file ~/games/doom/maps/doom2/vanilla/ ~/games/doom/mods/vanilla/sound/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad -savedir ~/games/doom/savegames/doom2/ -skill 3 -warp 01
$ chocolate-doom -fullscreen -config ~/games/doom/config/chocolate/config.ini -iwad ~/games/doom/maps/iwads/doom.wad -file ~/games/doom/maps/doom/vanilla/ ~/games/doom/mods/vanilla/sound/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad -savedir ~/games/doom/savegames/doom/ -skill 3 -warp 1 1
$ D:\Games\chocolate-doom\chocolate-doom.exe -fullscreen -config D:\Games\doom\config\chocolate\config.ini -iwad D:\Games\doom\maps\iwads\doom2.wad -file D:\Games\doom\maps\doom2\vanilla\ D:\Games\doom\mods\vanilla\sound\pk_doom_sfx\pk_doom_sfx_20120224.wad D:\Games\doom\mods\vanilla\palette\jovian_palette\JoyPal.wad -savedir D:\Games\doom\savegames\doom2\ -skill 3 -warp 01
```

# Maps
```shell
$ chocolate-doom -fullscreen -config ~/games/doom/config/chocolate/config.ini -iwad ~/games/doom/maps/iwads/doom.wad -merge ~/games/doom/maps/doom/zdoom/sigil/sigil_compat.wad ~/games/doom/maps/doom/zdoom/sigil/sigil_shreds_compat.wad ~/games/doom/mods/vanilla/sound/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad -savedir ~/games/doom/savegames/doom/ -skill 3 -warp 3 1
> D:\Games\chocolate-doom\chocolate-doom.exe -fullscreen -config D:\Games\doom\config\chocolate\config.ini -iwad D:\Games\doom\maps\original\doom.wad -merge D:\Games\doom\maps\doom\zdoom\sigil\sigil_compat.wad D:\Games\doom\maps\doom\zdoom\sigil\sigil_shreds_compat.wad D:\Games\doom\mods\vanilla\sound\pk_doom_sfx\pk_doom_sfx_20120224.wad D:\Games\doom\mods\vanilla\palette\jovian_palette\JoyPal.wad -savedir D:\Games\doom\savegames\doom\ -skill 3 -warp 1 1
```

# Random map from dir
```shell
$ export iwad=doom2 && export pwadfile=$(find ~/games/doom/maps/${iwad}/vanilla/*/*.wad ! -name *tex*.* ! -name *res*.* ! -name *fix.* ! -name *demo*.* ! -name *mus.* -type f | shuf -n 1) && chocolate-doom -fullscreen -config ~/games/doom/config/chocolate/config.ini -iwad ~/games/doom/maps/iwads/${iwad}.wad -file ${pwadfile} ~/games/doom/mods/vanilla/sound/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad -save ~/games/doom/savegames/${iwad}/ -skill 3 -warp 01 && echo ${pwadfile}
$ export iwad=doom && export pwadfile=$(find ~/games/doom/maps/${iwad}/vanilla/*/*.wad ! -name *tex*.* ! -name *res*.* ! -name *fix.* ! -name *demo*.* ! -name *mus.* -type f | shuf -n 1) && chocolate-doom -fullscreen -config ~/games/doom/config/chocolate/config.ini -iwad ~/games/doom/maps/iwads/${iwad}.wad -file ${pwadfile} ~/games/doom/mods/vanilla/sound/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad -save ~/games/doom/savegames/${iwad}/ -skill 3 -warp 1 1 && echo ${pwadfile}
$ export iwad=doom2 && export pwadfile=$(find ~/games/doom/maps/${iwad}/vanilla/*/*.wad ! -name *tex*.* ! -name *res*.* ! -name *fix.* ! -name *demo*.* ! -name *mus.* -type f | shuf -n 1) && chocolate-doom -fullscreen -config ~/games/doom/config/chocolate/config.ini -iwad ~/games/doom/maps/iwads/${iwad}.wad -file ${pwadfile} ~/games/doom/mods/vanilla/sound/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad -save ~/games/doom/savegames/${iwad}/ -skill 3 -warp $(shuf -i 1-30 -n 1) && echo ${pwadfile}
$ export iwad=doom && export pwadfile=$(find ~/games/doom/maps/${iwad}/vanilla/*/*.wad ! -name *tex*.* ! -name *res*.* ! -name *fix.* ! -name *demo*.* ! -name *mus.* -type f | shuf -n 1) && chocolate-doom -fullscreen -config ~/games/doom/config/chocolate/config.ini -iwad ~/games/doom/maps/iwads/${iwad}.wad -file ${pwadfile} ~/games/doom/mods/vanilla/sound/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad -save ~/games/doom/savegames/${iwad}/ -skill 3 -warp $(shuf -i 1-4 -n 1) $(shuf -i 1-8 -n 1) && echo ${pwadfile}
```

# Mods
```shell
$ find ~/games/doom/mods/vanilla/*/*.wad
```

# Random map and obtain map number with gzdoom
```shell
$ export iwad=doom2 && export pwadfile=$(find ~/games/doom/maps/${iwad}/vanilla/*/*.wad ! -name *tex*.* ! -name *res*.* ! -name *fix.* ! -name *demo*.* ! -name *mus.* -type f | shuf -n 1) && chocolate-doom -fullscreen -config ~/games/doom/config/chocolate/config.ini -iwad ~/games/doom/maps/iwads/${iwad}.wad -file ${pwadfile} ~/games/doom/mods/vanilla/sound/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad -save ~/games/doom/savegames/${iwad}/ -skill 3 -warp $(gzdoom -iwad ~/games/doom/maps/original/${iwad}.wad -file $pwadfile -norun -hashfiles > /dev/null || true && cat fileinfo.txt | grep $pwadfile | grep -e " MAP" -e " maps/" | awk '{print $4}' | shuf -n 1 | sed -e "s/^MAP//" -e 's/,//g' -e "s/^maps\/map//" -e 's/.wad,//g') && rm fileinfo.txt && echo ${pwadfile}
$ export iwad=doom && export pwadfile=$(find ~/games/doom/maps/${iwad}/vanilla/*/*.wad ! -name *tex*.* ! -name *res*.* ! -name *fix.* ! -name *demo*.* ! -name *mus.* -type f | shuf -n 1) && chocolate-doom -fullscreen -config ~/games/doom/config/chocolate/config.ini -iwad ~/games/doom/maps/iwads/${iwad}.wad -file ${pwadfile} ~/games/doom/mods/vanilla/sound/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad -save ~/games/doom/savegames/${iwad}/ -skill 3 -warp $(gzdoom -iwad ~/games/doom/maps/original/${iwad}.wad -file $pwadfile -norun -hashfiles > /dev/null || true && cat fileinfo.txt | grep $pwadfile | grep -E " E[1-5]M" | awk '{print $4}' | shuf -n 1 | sed -r 's/[EM]+/ /g' | sed -e "s/^0//" -e 's/,//g') && rm fileinfo.txt && echo ${pwadfile}
```
