# Compilation
## Install gcc8
```shell
$ cd ~/aur
$ git clone https://aur.archlinux.org/gcc8.git
$ cd gcc8
$ gpg --recv-keys A328C3A2C3C45C06
$ makepkg -si
```
## Install oblige (No longer developed)
```shell
$ cd ~/src
$ git clone https://github.com/caligari87/Oblige.git
$ cd Oblige
$ make "CXX=g++-8"
```
## Install obsidian
```shell
$ cd ~/src
$ git clone https://github.com/dashodanger/Obsidian.git
$ cd Obsidian
$ mkdir build
$ cd build
$ cmake ..
$ make (-j# optional, with # being the number of cores you'd like to use)
$ cd ..
$ cp build/obsidian .
```
### Then, obsidian can be launched with
```shell
$ ./obsidian --install .
```
### Install obaddon (No longer developed)
```shell
$ cd ~/src
$ git clone https://github.com/caligari87/ObAddon ObAddon
$ cd ObAddon
$ cd scripts
$ make
$ cp ~/src/ObAddon/scripts/build/obaddon.pk3 ~/games/doom/tools/oblige/obaddon/
```

# Usage
```shell
$ oblige --addon /usr/share/oblige/addons/obaddon.pk3
$ oblige --addon ~/games/doom/tools/oblige/obaddon/obaddon.pk3
$ ~/src/Obsidian/obsidian --install ~/src/Obsidian/
```

## Batch mode allows running OBLIGE non-interactively (without any GUI)
```shell
$ oblige --addon ~/games/doom/tools/oblige/obaddon/obaddon.pk3 --batch ~/games/doom/maps/oblige/oblige-doom.wad game={doom1,ultdoom,doom2,plutonia,tnt} engine={limit-removing,boom,gzdoom} length={single,few,episode,game} theme={(doom1)tech,deimos,hell}{(ultdoom)tech,deimos,hell,flesh}{(doom2)tech,urban,hell}{(plutonia)tech,urban,hell}{(tnt)tech,urban,hell,egipt} size={micro,mini,tiny,small,average,large,huge,colossal,gargan,trans}
```

## Doom 2
```shell
$ cd ~/src/Oblige/ && ./Oblige --addon ~/games/doom/tools/oblige/obaddon/obaddon.pk3 --batch ~/games/doom/maps/oblige/oblige_doom2.wad game=doom2 engine=boom length=single theme=hell size=large mons=scarse strenght=medium ramp_up=fast mon_variety=normal health=normal ammo=normal weapons=normal items=normal && cd -
$ oblige --batch ~/games/doom/maps/oblige/oblige-doom2-gzdoom-single-hell-large-$(date +'%y%m%d').wad game=doom2 engine=gzdoom length=single theme=hell size=large mons=scarse strenght=harder ramp_up=veryfast mon_variety=heaps health=more ammo=heaps weapons=normal items=normal
$ ~/src/Obsidian/obsidian --install ~/src/Obsidian/ --batch ~/games/doom/maps/oblige/oblige_doom2.wad --load ~/games/doom/tools/obsidian/configs/doom2_vanilla.txt
```

## Doom 1
```shell
$ oblige --batch ~/games/doom/maps/oblige/oblige-doom1-limit-removing-single-hell-large-$(date +'%y%m%d').wad game=doom1 engine=limit-removing length=single theme=hell size=large mons=scarse strenght=harder ramp_up=veryfast mon_variety=heaps health=more ammo=heaps weapons=normal items=normal
```

## Ultimate doom:
```shell
$ oblige --batch ~/games/doom/maps/oblige/oblige-ultdoom-limit-removing-single-hell-large-$(date +'%y%m%d').wad game=ultdoom engine=limit-removing length=single theme=hell size=large mons=scarse strenght=harder ramp_up=veryfast mon_variety=heaps health=more ammo=heaps weapons=normal items=normal
$ oblige --batch ~/games/doom/maps/oblige/oblige-ultdoom-limit-removing-single-flesh-large-$(date +'%y%m%d').wad game=ultdoom engine=limit-removing length=single theme=flesh size=large mons=scarse strenght=harder ramp_up=veryfast mon_variety=heaps health=more ammo=heaps weapons=normal items=normal
```

## Windows
```shell
> D:\Games\Oblige-7.70\Oblige.exe --batch "D:\Games\doom\maps\oblige\oblige-doom2-limit-removing-single-hell-large-$(Get-Date -Format 'yyMMdd').wad" game=doom2 engine=limit-removing length=single theme=hell size=large mons=scarse strenght=medium ramp_up=fast mon_variety=normal health=normal ammo=normal weapons=normal items=normal
```

## Use the Config Manager to save your desired settings into a file:
```shell
$ oblige --batch OUTPUT.wad --load MYCONF.txt
```

## wine
```shell
$ wine ~/games/doom/tools/oblige/oblige-770-win/Oblige.exe --batch ~/games/doom/maps/oblige/oblige_doom2_limit-removings_$(date +'%y%m%d').wad --load ~/games/doom/maps/oblige/oblige-doom2-limit-removing-single-hell-batch_settings.txt
$ wine ~/games/doom/tools/oblige/oblige-770-win/Oblige.exe --batch ~/games/doom/maps/oblige/oblige_doom2_gzdoom_$(date +'%y%m%d').wad --load ~/games/doom/maps/oblige/oblige-doom2-gzdoom-single-hell-batch_settings.txt
$ wine ~/games/doom/tools/oblige/oblige-770-win/Oblige.exe --batch ~/games/doom/maps/oblige/oblige_plutonia_boom.wad game=plutonia engine=boom lenght=single theme=hell size=micro mons=scarse strenght=harder ramp_up=veryfast mon_variety=heaps health=more ammo=more weapons=normal items=normal
```

## Chocolate doom
```shell
$ chocolate-doom -fullscreen -iwad ~/games/doom/maps/iwads/doom2.wad -file ~/games/doom/maps/oblige/oblige-doom2-limit-removing-single-hell-large-$(date +'%y%m%d').wad ~/games/doom/mods/vanilla/sound/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad ~/games/doom/mods/vanilla/smoothed/smoothed.wad -savedir ~/games/doom/savegames/doom2/ -skill 3 -warp 01
> D:\Games\chocolate-doom\chocolate-doom.exe -fullscreen -iwad D:\Games\doom\maps\original\doom2.wad -file "D:\Games\doom\maps\oblige\oblige-doom2-limit-removing-single-hell-large-$(Get-Date -Format 'yyMMdd').wad" D:\Games\doom\mods\vanilla\sound\pk_doom_sfx\pk_doom_sfx_20120224.wad D:\Games\doom\mods\vanilla\palette\jovian_palette\JoyPal.wad -savedir D:\Games\doom\savegames\doom2\ -skill 3 -warp 01
```

## Crispy Doom
```shell
$ crispy-doom -fullscreen -iwad ~/games/doom/maps/iwads/doom2.wad -file ~/games/doom/maps/oblige/oblige_doom2_limit-removing_$(date +'%y%m%d').wad ~/games/doom/mods/vanilla/sound/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad ~/games/doom/mods/vanilla/smoothed/smoothed.wad -savedir ~/games/doom/savegames/doom2/ -skill 3 -warp 01
> D:\Games\crispy-doom\crispy-doom.exe -fullscreen -iwad D:\Games\doom\maps\original\doom2.wad -file "D:\Games\doom\maps\oblige\oblige_doom2_limit-removing_$(Get-Date -Format 'yyMMdd').wad" D:\Games\doom\mods\vanilla\sound\pk_doom_sfx\pk_doom_sfx_20120224.wad D:\Games\doom\mods\vanilla\palette\jovian_palette\JoyPal.wad -savedir D:\Games\doom\savegames\doom2\ -skill 3 -warp 01
```

## Prboom+
```shell
$ cd ~/src/Oblige/ && ./Oblige --addon ~/games/doom/tools/oblige/obaddon/obaddon.pk3 --batch ~/games/doom/maps/oblige/oblige_doom2.wad game=doom2 engine=boom length=single theme=hell size=large mons=scarse strenght=medium ramp_up=fast mon_variety=normal health=normal ammo=normal weapons=normal items=normal && cd - && prboom-plus -vidmode gl -complevel 17 -width 1920 -height 1080 -fullscreen -geom 640x360f -aspect 16:9 -iwad ~/games/doom/maps/iwads/doom2.wad -file ~/games/doom/maps/oblige/oblige_doom2.wad ~/games/doom/mods/vanilla/sound/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad ~/games/doom/mods/vanilla/smoothed/smoothed.wad -save ~/games/doom/savegames/doom2/ -skill 3 -warp 01
> D:\Games\prboom-plus\prboom-plus.exe -vidmode gl -complevel 17 -width 1920 -height 1080 -fullscreen -geom 640x360f -aspect 16:9 -iwad D:\Games\doom\maps\original\doom2.wad -file "D:\Games\doom\maps\oblige\oblige_doom2_limit-removing_$(Get-Date -Format 'yyMMdd').wad" D:\Games\doom\mods\vanilla\sound\pk_doom_sfx\pk_doom_sfx_20120224.wad D:\Games\doom\mods\vanilla\palette\jovian_palette\JoyPal.wad -save D:\Games\doom\savegames\doom2\ -skill 3 -warp 01
```

## Gzdoom
```shell
$ gzdoom -config ~/games/doom/config/zdoom/config_zdoom.ini -width 1920 -height 1080 -fullscreen -iwad ~/games/doom/maps/iwads/doom2.wad -file ~/games/doom/maps/oblige/oblige_doom2_gzdoom_$(date +'%y%m%d').wad ~/games/doom/mods/vanilla/sound/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad ~/games/doom/mods/vanilla/smoothed/smoothed.wad ~/games/doom/mods/zdoom/enhancements/vanilla_essence/vanilla_essence_4_3.pk3 -savedir ~/games/doom/savegames/doom2/ -skill 3 -warp 01
> D:\Games\gzdoom\gzdoom.exe -width 1920 -height 1080 -fullscreen -iwad D:\Games\doom\maps\original\doom2.wad -file "D:\Games\doom\maps\oblige\oblige_gzdoom_doom2_$(Get-Date -Format 'yyMMdd').wad" D:\Games\doom\mods\vanilla\sound\pk_doom_sfx\pk_doom_sfx_20120224.wad D:\Games\doom\mods\vanilla\palette\jovian_palette\JoyPal.wad D:\Games\doom\mods\zdoom\vanilla_essence\vanilla_essence_4_3.pk3 -savedir D:\Games\doom\savegames\doom2\ -skill 3 -warp 01
```

# Download daily map from dailydoommap
```shell
$ cd ~/games/doom/maps/oblige/ && curl -OL $(lynx -dump http://dailydoommap.org/ | grep "http://dailydoommap.org/maps/" | grep -Eo 'http://[^ >]+') && cd -
$ gzdoom -width 1920 -height 1080 -fullscreen -iwad ~/games/doom/maps/iwads/doom2.wad -file ~/games/doom/maps/oblige/$(date +'%Y-%m-%d').7z ~/games/doom/mods/vanilla/sound/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad ~/games/doom/mods/vanilla/smoothed/smoothed.wad ~/games/doom/mods/zdoom/enhancements/vanilla_essence/vanilla_essence_4_3.pk3 -savedir ~/games/doom/savegames/doom2/ -skill 3 -warp 01
```
