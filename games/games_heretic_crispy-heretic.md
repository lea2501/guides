# Usage

Ejecutable local: `~/src/crispy-doom/src/crispy-heretic`

```shell
<<<<<<< Updated upstream
$ ~/src/crispy-doom/src/crispy-heretic -fullscreen -iwad ~/games/doom/maps/iwads/heretic.wad -file ~/games/doom/maps/heretic/vanilla/ ~/games/doom/mods/vanilla/palette/dimm_pal/her-pal.wad -savedir ~/games/doom/savegames/heretic/ -skill 3 -warp 1 1
=======
$ ~/src/crispy-doom/src/crispy-heretic -fullscreen -config ~/games/doom/config/crispy/config_nolimit_heretic.ini -iwad ~/games/doom/maps/iwads/heretic.wad -file ~/games/doom/maps/heretic/vanilla/ ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad -savedir ~/games/doom/savegames/heretic/ -skill 3 -warp 1 1
$ crispy-heretic -fullscreen -config ~/games/doom/config/crispy/config_nolimit_heretic.ini -iwad ~/games/doom/maps/iwads/heretic.wad -file ~/games/doom/maps/heretic/vanilla/ ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad -savedir ~/games/doom/savegames/heretic/ -skill 3 -warp 1 1
>>>>>>> Stashed changes
```

# Maps
```shell
$ ~/src/crispy-doom/src/crispy-heretic -fullscreen -config ~/games/doom/config/crispy/config_nolimit_heretic.ini -iwad ~/games/doom/maps/iwads/heretic.wad -file ~/games/doom/maps/heretic/vanilla/dark_mountain/darkmtn.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad -savedir ~/games/doom/savegames/heretic/ -skill 3 -warp 1 1
$ ~/src/crispy-doom/src/crispy-heretic -fullscreen -config ~/games/doom/config/crispy/config_nolimit_heretic.ini -iwad ~/games/doom/maps/iwads/heretic.wad -file ~/games/doom/maps/heretic/vanilla/valley_of_saints/vos.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad -savedir ~/games/doom/savegames/heretic/ -skill 3 -warp 1 1
$ ~/src/crispy-doom/src/crispy-heretic -fullscreen -config ~/games/doom/config/crispy/config_nolimit_heretic.ini -iwad ~/games/doom/maps/iwads/heretic.wad -file ~/games/doom/maps/heretic/vanilla/unbeliever/unbeliev.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad -deh ~/games/doom/maps/heretic/vanilla/unbeliever/unbeliev.hhe -savedir ~/games/doom/savegames/heretic/ -skill 3 -warp 1 1
```

# Random Map From Dir
```shell
$ export iwad=heretic && export pwadfile=$(find ~/games/doom/maps/${iwad}/vanilla/*/*.wad ! -name *tex*.* ! -name *res*.* ! -name *fix.* ! -name *demo*.* ! -name *mus.* -type f | shuf -n 1) && ~/src/crispy-doom/src/crispy-heretic -fullscreen -config ~/games/doom/config/crispy/config_nolimit_heretic.ini -iwad ~/games/doom/maps/iwads/${iwad}.wad -file ${pwadfile} ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad -save ~/games/doom/savegames/${iwad}/ -skill 3 -warp 1 1 && echo ${pwadfile}
$ export iwad=heretic && export pwadfile=$(find ~/games/doom/maps/${iwad}/vanilla/*/*.wad ! -name *tex*.* ! -name *res*.* ! -name *fix.* ! -name *demo*.* ! -name *mus.* -type f | shuf -n 1) && export hhefile=$(find "$(dirname "${pwadfile}")" -maxdepth 1 -iname '*.hhe' -type f | head -n 1) && ~/src/crispy-doom/src/crispy-heretic -fullscreen -config ~/games/doom/config/crispy/config_nolimit_heretic.ini -iwad ~/games/doom/maps/iwads/${iwad}.wad -file ${pwadfile} ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad ${hhefile:+-deh ${hhefile}} -save ~/games/doom/savegames/${iwad}/ -skill 3 -warp 1 1 && echo ${pwadfile} ${hhefile}
```

# Mods
```shell
$ find ~/games/doom/maps/heretic/vanilla/*/{*.wad,*.hhe}
```
