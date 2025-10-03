# Usage
```shell
$ dhewm3 +set r_customWidth "1920" +set r_customHeight "1080" +set r_fullscreen 1 +set r_mode "-1" +seta r_brightness 0 +seta r_gamma 0 +vid_restart +set fs_basepath ~/games/doom3 +set game base +seta com_allowconsole 1
$ dhewm3 +set fs_basepath ~/games/doom3 +set game d3xp +seta com_allowconsole 1
$ dhewm3 +set fs_basepath ~/games/doom3 +set fs_game d3le +set fs_game_base d3xp +seta com_allowconsole 1
```

# Allow console
```shell
$ dhewm3 +set r_fullscreen 1 +set r_mode -1 +set r_customWidth 1920 +set r_customHeight 1080 +set fs_basepath ~/games/doom3 +set game base +seta com_allowconsole 1 +map game/alphalabs1
```

# cheats
```text
give weapon_<weapon name> - bfg, chaingun, chainsaw, flashlight, machinegun, pistol, plasmagun, rocketlauncher and shotgun.
```

# Play random map
```shell
$ export GAME_DIR=~/games/doom3 && export basegame=base && mapfile=$(unzip -l $GAME_DIR/${basegame}/pak000.pk4 */game/*.map | grep maps/game/ | grep -v maps/game/mp/ | shuf -n 1 | awk -F/ '{print $3}') && dhewm3 +set r_fullscreen 1 +set r_mode -1 +set r_customWidth 1920 +set r_customHeight 1080 +set fs_basepath $GAME_DIR +set fs_game ${basegame} +seta com_allowconsole 1 +map $(echo game/$(basename -- ${mapfile%.*}))
$ export GAME_DIR=~/games/doom3 && export basegame=d3xp && mapfile=$(unzip -l $GAME_DIR/${basegame}/pak000.pk4 */game/*.map | grep maps/game/ | grep -v maps/game/mp/ | shuf -n 1 | awk -F/ '{print $3}') && dhewm3 +set r_fullscreen 1 +set r_mode -1 +set r_customWidth 1920 +set r_customHeight 1080 +set fs_basepath $GAME_DIR +set fs_game ${basegame} +seta com_allowconsole 1 +map $(echo game/$(basename -- ${mapfile%.*}))
```
