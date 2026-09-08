# Usage
```shell
$ ~/src/crispy-doom/src/crispy-hexen -fullscreen -config ~/games/doom/config/crispy/config_nolimit_hexen.ini -iwad ~/games/doom/maps/iwads/hexen.wad -file ~/games/doom/maps/hexen/vanilla/ ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad -savedir ~/games/doom/savegames/hexen/ -skill 3 -warp 1 1
$ crispy-hexen -fullscreen -config ~/games/doom/config/crispy/config_nolimit_hexen.ini -iwad ~/games/doom/maps/iwads/hexen.wad -file ~/games/doom/maps/hexen/vanilla/ ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad -savedir ~/games/doom/savegames/hexen/ -skill 3 -warp 1 1
```

# Maps
```shell
$ ~/src/crispy-doom/src/crispy-hexen -fullscreen -config ~/games/doom/config/crispy/config_nolimit_hexen.ini -iwad ~/games/doom/maps/iwads/hexen.wad -file ~/games/doom/maps/hexen/vanilla/abbey/abbey.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad -savedir ~/games/doom/savegames/hexen/ -skill 3 -warp 1 1
$ ~/src/crispy-doom/src/crispy-hexen -fullscreen -config ~/games/doom/config/crispy/config_nolimit_hexen.ini -iwad ~/games/doom/maps/iwads/hexen.wad -file ~/games/doom/maps/hexen/vanilla/hexelent/hexelent.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad -savedir ~/games/doom/savegames/hexen/ -skill 3 -warp 1 1
$ ~/src/crispy-doom/src/crispy-hexen -fullscreen -config ~/games/doom/config/crispy/config_nolimit_hexen.ini -iwad ~/games/doom/maps/iwads/hexen.wad -file ~/games/doom/maps/iwads/hexdd.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad -savedir ~/games/doom/savegames/hexen/ -skill 3 -warp 1 1
```

# Random Map From Dir
```shell
$ export iwad=hexen && export pwadfile=$(find ~/games/doom/maps/${iwad}/vanilla/*/*.wad ! -name *tex*.* ! -name *res*.* ! -name *fix.* ! -name *demo*.* ! -name *mus.* -type f | shuf -n 1) && ~/src/crispy-doom/src/crispy-hexen -fullscreen -config ~/games/doom/config/crispy/config_nolimit_hexen.ini -iwad ~/games/doom/maps/iwads/${iwad}.wad -file ${pwadfile} ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad -save ~/games/doom/savegames/${iwad}/ -skill 3 -warp 1 1 && echo ${pwadfile}
$ export iwad=hexen && export pwadfile=$(find ~/games/doom/maps/${iwad}/vanilla/*/*.wad ! -name *tex*.* ! -name *res*.* ! -name *fix.* ! -name *demo*.* ! -name *mus.* -type f | shuf -n 1) && ~/src/crispy-doom/src/crispy-hexen -fullscreen -config ~/games/doom/config/crispy/config_nolimit_hexen.ini -iwad ~/games/doom/maps/iwads/${iwad}.wad -file ${pwadfile} ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad -save ~/games/doom/savegames/${iwad}/ -skill 3 -warp $(shuf -i 1-3 -n 1) $(shuf -i 1-9 -n 1) && echo ${pwadfile}
```

# Mods
```shell
$ find ~/games/doom/maps/hexen/vanilla/*/*.wad
```
