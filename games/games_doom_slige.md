# Resources
```text
http://wondersmith.com/rants/slige.htm
https://www.doomworld.com/forum/topic/85548-dos-slige/
```

# Compile
## Compile slige
```shell
$ mkdir -p ~/src/xwadtools && cd ~/src/xwadtools/ && curl -O ftp://ftp.fu-berlin.de/pc/games/idgames/source/xwadtools-20010615.tar.gz && tar -xzvf xwadtools-20010615.tar.gz
$ cp -r ~/src/xwadtools/xwadtools/slige ~/src/ && cd ~/src/slige
$ cc -m32 slige.c -o slige
```

## Compile bsp
```shell
$ mkdir -p ~/src/bsp && cd ~/src/bsp && curl -O http://games.moria.org.uk/doom/bsp/download/bsp-5.2.tar.bz2 && tar -xjvf bsp-5.2.tar.bz2 && cd bsp-5.2
$ ./configure && make
```

# Usage
```shell
$ ~/src/slige/slige -config ~/src/slige/slige.cfg -doom2 -levels 8 -rooms 18 -map1 -nocustom ~/games/doom/maps/slige/slige_doom2.out
$ ~/src/bsp/bsp-5.2/bsp ~/games/doom/maps/slige/slige_doom2.out ~/games/doom/maps/slige/slige_doom2.wad
$ ~/src/slige/slige -config ~/src/slige/slige.cfg -doom -levels 8 -rooms 18 -e1m1 -nocustom ~/games/doom/maps/slige/slige_doom.out
$ ~/src/bsp/bsp-5.2/bsp ~/games/doom/maps/slige/slige_doom.out ~/games/doom/maps/slige/slige_doom.wad
```

## Usage (Wine)
```shell
$ wine ~/games/doom/tools/slige/slige485/slige.exe -doom2 -levels 1 -rooms 18 -map1 -nocustom ~/games/doom/maps/slige/slige_doom2.out
$ wine ~/games/doom/tools/bsp/bsp-5.1/bsp-w32.exe ~/games/doom/maps/slige/slige_doom2.out ~/games/doom/maps/slige/slige_doom2.wad
$ wine ~/games/doom/tools/slige/slige485/slige.exe -doom -levels 1 -rooms 18 -e1m1 -nocustom ~/games/doom/maps/slige/slige_doom.out
$ wine ~/games/doom/tools/bsp/bsp-5.1/bsp-w32.exe ~/games/doom/maps/slige/slige_doom.out ~/games/doom/maps/slige/slige_doom.wad
```

# Make a custom map and play directly
## Doom 2 prboom+
```shell
$ ~/src/slige/slige -config ~/src/slige/slige.cfg -doom2 -levels 8 -rooms 18 -map1 -bimo -biwe -minlight 180 -nocustom ~/games/doom/maps/slige/slige_doom2.out && ~/src/bsp/bsp-5.2/bsp ~/games/doom/maps/slige/slige_doom2.out -o ~/games/doom/maps/slige/slige_doom2.wad && prboom-plus -vidmode gl -complevel 17 -width 1920 -height 1080 -fullscreen -iwad ~/games/doom/maps/iwads/doom2.wad -file ~/games/doom/maps/slige/slige_doom2.wad ~/games/doom/mods/vanilla/sound/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad -save ~/games/doom/savegames/doom2/ -skill 3 -warp 01
```
## Doom 2 compiled prboom+
```shell
$ ~/src/slige/slige -config ~/src/slige/slige.cfg -doom2 -levels 8 -rooms 18 -map1 -bimo -biwe -minlight 180 -nocustom ~/games/doom/maps/slige/slige_doom2.out && ~/src/bsp/bsp-5.2/bsp ~/games/doom/maps/slige/slige_doom2.out -o ~/games/doom/maps/slige/slige_doom2.wad && ~/src/prboom-plus/prboom2/prboom-plus -config ~/src/prboom-plus/prboom2/prboom-plus.cfg -vidmode gl -complevel 17 -width 1920 -height 1080 -fullscreen -iwad ~/games/doom/maps/iwads/doom2.wad -file ~/games/doom/maps/slige/slige_doom2.wad ~/games/doom/mods/vanilla/sound/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad -save ~/games/doom/savegames/doom2/ -skill 3 -warp 01
```
## Doom 2 gzdoom
```shell
$ ~/src/slige/slige -config ~/src/slige/slige.cfg -doom2 -levels 8 -rooms 18 -map1 -bimo -biwe -minlight 180 -nocustom ~/games/doom/maps/slige/slige_doom2.out && ~/src/bsp/bsp-5.2/bsp ~/games/doom/maps/slige/slige_doom2.out -o ~/games/doom/maps/slige/slige_doom2.wad && gzdoom -config ~/games/doom/config/zdoom/config_zdoom.ini -width 1920 -height 1080 -fullscreen -iwad ~/games/doom/maps/iwads/doom2.wad -file ~/games/doom/maps/slige/slige_doom2.wad ~/games/doom/mods/vanilla/sound/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad ~/games/doom/mods/zdoom/smoothdoom/smoothdoom.pk3 ~/games/doom/mods/zdoom/smoothdoom/smoothtextures.pk3 ~/games/doom/mods/zdoom/dark_doomz/darkdoomz_v1.6.pk3 -savedir ~/games/doom/savegames/doom2/ -skill 3 -warp 01
$ ~/src/slige/slige -config ~/src/slige/slige.cfg -doom2 -levels 8 -rooms 18 -map1 -bimo -biwe -minlight 180 -nocustom ~/games/doom/maps/slige/slige_doom2.out && ~/src/bsp/bsp-5.2/bsp ~/games/doom/maps/slige/slige_doom2.out -o ~/games/doom/maps/slige/slige_doom2.wad && gzdoom -config ~/games/doom/config/zdoom/config_zdoom.ini -width 1920 -height 1080 -fullscreen -iwad ~/games/doom/maps/iwads/doom2.wad -file ~/games/doom/maps/slige/slige_doom2.wad ~/games/doom/mods/vanilla/sound/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad ~/games/doom/mods/zdoom/dark_doom_creatures/DMGMOD1.1b30c.wad ~/games/doom/mods/zdoom/dark_doom_creatures/DMGMOD1.37d-Gothic-Nightmare-addon.wad ~/games/doom/mods/zdoom/dark_doom_creatures/sm4BBgorev3.pk3 /home/lea/games/doom/mods/zdoom/gameplay/immerse/immerse_v104.pk3 -savedir ~/games/doom/savegames/doom2/ -skill 3 -warp 01
```
## Doom 1 prboom+
```shell
$ ~/src/slige/slige -config ~/src/slige/slige.cfg -doom -levels 8 -rooms 18 -e1m1 -bimo -biwe -minlight 180 -nocustom ~/games/doom/maps/slige/slige_doom.out && ~/src/bsp/bsp-5.2/bsp ~/games/doom/maps/slige/slige_doom.out -o ~/games/doom/maps/slige/slige_doom.wad && prboom-plus -vidmode gl -complevel 17 -width 1920 -height 1080 -fullscreen -iwad ~/games/doom/maps/original/doom.wad -file ~/games/doom/maps/slige/slige_doom.wad ~/games/doom/mods/vanilla/sound/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad -save ~/games/doom/savegames/doom/ -skill 3 -warp 1 1
```

# Make custom maps until desired one is created
```shell
$ while true; do ~/src/slige/slige -config ~/src/slige/slige.cfg -doom2 -arena -levels 1 -rooms 18 -map01 -bimo! -minlight 180 -biwe ~/games/doom/maps/slige/slige_doom2.out > ~/games/doom/maps/slige/slige_doom2.log && cat ~/games/doom/maps/slige/slige_doom2.log && grep "Extra hugeness" ~/games/doom/maps/slige/slige_doom2.log && break; done && ~/src/bsp/bsp-5.2/bsp ~/games/doom/maps/slige/slige_doom2.out -o ~/games/doom/maps/slige/slige_doom2.wad && prboom-plus -config ~/games/doom/config/prboom-plus/prboom-plus_vanilla.cfg -vidmode gl -complevel 17 -width 1920 -height 1080 -fullscreen -geom 640x360f -aspect 16:9 -iwad ~/games/doom/maps/iwads/doom2.wad -file ~/games/doom/maps/slige/slige_doom2.wad ~/games/doom/mods/vanilla/sound/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad -save ~/games/doom/savegames/doom2/ -skill 3 -warp 01
$ while true; do ~/src/slige/slige -config ~/src/slige/slige.cfg -doom2 -arena -levels 1 -rooms 18 -map01 -bimo! -minlight 180 -biwe ~/games/doom/maps/slige/slige_doom2.out > ~/games/doom/maps/slige/slige_doom2.log && cat ~/games/doom/maps/slige/slige_doom2.log && grep "Extra hugeness" ~/games/doom/maps/slige/slige_doom2.log && break; done && ~/src/bsp/bsp-5.2/bsp ~/games/doom/maps/slige/slige_doom2.out -o ~/games/doom/maps/slige/slige_doom2.wad && crispy-doom -config ~/games/doom/config/crispy/config_limit-removing.ini -fullscreen -iwad ~/games/doom/maps/iwads/doom2.wad -file ~/games/doom/maps/slige/slige_doom2.wad ~/games/doom/mods/vanilla/sound/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad -savedir ~/games/doom/savegames/doom2/ -skill 3 -warp 01
$ while true; do ~/src/slige/slige -config ~/src/slige/slige.cfg -doom2 -arena -levels 1 -rooms 18 -map01 -bimo! -minlight 180 -biwe ~/games/doom/maps/slige/slige_doom2.out > ~/games/doom/maps/slige/slige_doom2.log && cat ~/games/doom/maps/slige/slige_doom2.log && grep "Extra hugeness" ~/games/doom/maps/slige/slige_doom2.log && break; done && ~/src/bsp/bsp-5.2/bsp ~/games/doom/maps/slige/slige_doom2.out -o ~/games/doom/maps/slige/slige_doom2.wad && gzdoom -config ~/games/doom/config/zdoom/config_zdoom.ini -width 1920 -height 1080 -fullscreen -iwad ~/games/doom/maps/iwads/doom2.wad -file ~/games/doom/maps/slige/slige_doom2.wad ~/games/doom/mods/vanilla/sound/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad ~/games/doom/mods/zdoom/enhancements/vanilla_essence/vanilla_essence_4_3.pk3 -savedir ~/games/doom/savegames/doom2/ -skill 3 -warp 01
$ while true; do ~/src/slige/slige -config ~/src/slige/slige.cfg -doom2 -arena -levels 1 -rooms 18 -map01 -bimo! -minlight 180 -biwe ~/games/doom/maps/slige/slige_doom2.out > ~/games/doom/maps/slige/slige_doom2.log && cat ~/games/doom/maps/slige/slige_doom2.log && grep "Extra hugeness" ~/games/doom/maps/slige/slige_doom2.log && break; done && ~/src/bsp/bsp-5.2/bsp ~/games/doom/maps/slige/slige_doom2.out -o ~/games/doom/maps/slige/slige_doom2.wad && gzdoom -config ~/games/doom/config/zdoom/config_zdoom.ini -width 1920 -height 1080 -fullscreen -iwad ~/games/doom/maps/iwads/doom2.wad -file ~/games/doom/maps/slige/slige_doom2.wad ~/games/doom/mods/vanilla/sound/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad ~/games/doom/mods/zdoom/dark_doom_creatures/DMGMOD1.1b30c.wad ~/games/doom/mods/zdoom/dark_doom_creatures/DMGMOD1.37d-Gothic-Nightmare-addon.wad ~/games/doom/mods/zdoom/dark_doom_creatures/sm4BBgorev3.pk3 -savedir ~/games/doom/savegames/doom2/ -skill 3 -warp 01
```

## Special rooms
```text
Biggest monsters
switch quest
Sunrooms
Extra hugeness
Key thing
Water pool
Nukage city
Multifork
Downlocked gate
Small triggerbox
Pillar gate
OL Gate quest
Quest push
Bath
Uplocked gate
Window airshaft
Locked stairs
Intertwin decroom
Diamond
```

# Automatic SLIGE megawad
## Download only
```shell
$ cd ~/games/doom/maps/slige/ && curl -OL https://soulsphere.org/hacks/slige/megawad.zip && unzip megawad.zip && mv megawad.wad megawad$(date +'%y%m%d').wad && mv megawad.txt megawad$(date +'%y%m%d').txt && rm megawad.zip && cd -
```

## Chocolate doom
```shell
$ cd ~/games/doom/maps/slige/ && curl -OL https://soulsphere.org/hacks/slige/megawad.zip && unzip megawad.zip && mv megawad.wad megawad$(date +'%y%m%d').wad && mv megawad.txt megawad$(date +'%y%m%d').txt && rm megawad.zip && cd - && chocolate-doom -fullscreen -iwad ~/games/doom/maps/iwads/doom2.wad -file ~/games/doom/maps/slige/megawad$(date +'%y%m%d').wad ~/games/doom/mods/vanilla/sound/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad -savedir ~/games/doom/savegames/doom2/ -skill 3 -warp 01
$ cd ~/games/doom/maps/slige/ && curl -OL https://soulsphere.org/hacks/slige/megawad.zip && unzip megawad.zip && mv megawad.wad megawad$(date +'%y%m%d').wad && mv megawad.txt megawad$(date +'%y%m%d').txt && rm megawad.zip && cd - && chocolate-doom -fullscreen -iwad ~/games/doom/maps/iwads/doom2.wad -file $(find ~/games/doom/maps/slige/megawad*.wad -type f | shuf -n 1) ~/games/doom/mods/vanilla/sound/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad -savedir ~/games/doom/savegames/doom2/ -skill 3 -warp 01
$ chocolate-doom -fullscreen -iwad ~/games/doom/maps/iwads/doom2.wad -file ~/games/doom/maps/slige/megawad$(date +'%y%m%d').wad ~/games/doom/mods/vanilla/sound/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad -savedir ~/games/doom/savegames/doom2/ -skill 3 -warp 01
$ chocolate-doom -fullscreen -iwad ~/games/doom/maps/iwads/doom2.wad -file $(find ~/games/doom/maps/slige/megawad*.wad -type f | shuf -n 1) ~/games/doom/mods/vanilla/sound/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad -save ~/games/doom/savegames/doom2/ -skill 3 -warp $(shuf -i 1-30 -n 1)
$ chocolate-doom -fullscreen -iwad ~/games/doom/maps/iwads/doom2.wad -file ~/games/doom/maps/slige/slige_doom2.wad ~/games/doom/mods/vanilla/sound/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad -savedir ~/games/doom/savegames/doom2/ -skill 3 -warp 01
> D:\Games\chocolate-doom\chocolate-doom.exe -fullscreen -iwad D:\Games\doom\maps\original\doom2.wad -file "D:\Games\doom\maps\slige\megawad$(Get-Date -Format 'yyMMdd').wad" D:\Games\doom\mods\vanilla\sound\pk_doom_sfx\pk_doom_sfx_20120224.wad D:\Games\doom\mods\vanilla\palette\jovian_palette\JoyPal.wad -savedir D:\Games\doom\savegames\doom2\ -skill 3 -warp 01
```

## Crispy Doom
```shell
$ cd ~/games/doom/maps/slige/ && curl -OL https://soulsphere.org/hacks/slige/megawad.zip && unzip megawad.zip && mv megawad.wad megawad$(date +'%y%m%d').wad && mv megawad.txt megawad$(date +'%y%m%d').txt && rm megawad.zip && cd - && crispy-doom -fullscreen -iwad ~/games/doom/maps/iwads/doom2.wad -file ~/games/doom/maps/slige/megawad$(date +'%y%m%d').wad ~/games/doom/mods/vanilla/sound/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad -savedir ~/games/doom/savegames/doom2/ -skill 3 -warp 01
$ cd ~/games/doom/maps/slige/ && curl -OL https://soulsphere.org/hacks/slige/megawad.zip && unzip megawad.zip && mv megawad.wad megawad$(date +'%y%m%d').wad && mv megawad.txt megawad$(date +'%y%m%d').txt && rm megawad.zip && cd - && crispy-doom -fullscreen -iwad ~/games/doom/maps/iwads/doom2.wad -file $(find ~/games/doom/maps/slige/megawad*.wad -type f | shuf -n 1) ~/games/doom/mods/vanilla/sound/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad -savedir ~/games/doom/savegames/doom2/ -skill 3 -warp 01
$ crispy-doom -fullscreen -iwad ~/games/doom/maps/iwads/doom2.wad -file ~/games/doom/maps/slige/megawad$(date +'%y%m%d').wad ~/games/doom/mods/vanilla/sound/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad -savedir ~/games/doom/savegames/doom2/ -skill 3 -warp 01
$ crispy-doom -fullscreen -iwad ~/games/doom/maps/iwads/doom2.wad -file ~/games/doom/maps/slige/megawad$(date +'%y%m%d').wad ~/games/doom/mods/vanilla/sound/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad -savedir ~/games/doom/savegames/doom2/ -skill 3 -warp $(shuf -i 1-30 -n 1)
$ crispy-doom -fullscreen -iwad ~/games/doom/maps/iwads/doom2.wad -file ~/games/doom/maps/slige/slige_doom2.wad ~/games/doom/mods/vanilla/sound/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad -savedir ~/games/doom/savegames/doom2/ -skill 3 -warp 01
$ crispy-doom -fullscreen -iwad ~/games/doom/maps/iwads/doom2.wad -file $(find ~/games/doom/maps/slige/megawad*.wad -type f | shuf -n 1) ~/games/doom/mods/vanilla/sound/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad -save ~/games/doom/savegames/doom2/ -skill 3 -warp $(shuf -i 1-30 -n 1)
> D:\Games\crispy-doom\crispy-doom.exe -fullscreen -iwad D:\Games\doom\maps\original\doom2.wad -file "D:\Games\doom\maps\slige\megawad$(Get-Date -Format 'yyMMdd').wad" D:\Games\doom\mods\vanilla\sound\pk_doom_sfx\pk_doom_sfx_20120224.wad D:\Games\doom\mods\vanilla\palette\jovian_palette\JoyPal.wad -savedir D:\Games\doom\savegames\doom2\ -skill 3 -warp 01
```

## Prboom+
```shell
$ cd ~/games/doom/maps/slige/ && curl -OL https://soulsphere.org/hacks/slige/megawad.zip && unzip megawad.zip && mv megawad.wad megawad$(date +'%y%m%d').wad && mv megawad.txt megawad$(date +'%y%m%d').txt && rm megawad.zip && cd - && prboom-plus -vidmode gl -complevel 17 -width 1920 -height 1080 -fullscreen -geom 640x360f -aspect 16:9 -iwad ~/games/doom/maps/iwads/doom2.wad -file ~/games/doom/maps/slige/megawad$(date +'%y%m%d').wad ~/games/doom/mods/vanilla/sound/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad -save ~/games/doom/savegames/doom2/ -skill 3 -warp 01
$ cd ~/games/doom/maps/slige/ && curl -OL https://soulsphere.org/hacks/slige/megawad.zip && unzip megawad.zip && mv megawad.wad megawad$(date +'%y%m%d').wad && mv megawad.txt megawad$(date +'%y%m%d').txt && rm megawad.zip && cd - && prboom-plus -vidmode gl -complevel 17 -width 1920 -height 1080 -fullscreen -geom 640x360f -aspect 16:9 -iwad ~/games/doom/maps/iwads/doom2.wad -file $(find ~/games/doom/maps/slige/megawad*.wad -type f | shuf -n 1) ~/games/doom/mods/vanilla/sound/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad -savedir ~/games/doom/savegames/doom2/ -skill 3 -warp 01
$ prboom-plus -vidmode gl -complevel 17 -width 1920 -height 1080 -fullscreen -geom 640x360f -aspect 16:9 -iwad ~/games/doom/maps/iwads/doom2.wad -file ~/games/doom/maps/slige/megawad$(date +'%y%m%d').wad ~/games/doom/mods/vanilla/sound/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad -save ~/games/doom/savegames/doom2/ -skill 3 -warp 01
$ ~/src/prboom-plus/prboom2/prboom-plus -config ~/src/prboom-plus/prboom2/prboom-plus.cfg -vidmode gl -complevel 17 -width 1920 -height 1080 -fullscreen -geom 640x360f -aspect 16:9 -iwad ~/games/doom/maps/iwads/doom2.wad -file ~/games/doom/maps/slige/megawad$(date +'%y%m%d').wad ~/games/doom/mods/vanilla/sound/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad -save ~/games/doom/savegames/doom2/ -skill 3 -warp 01
$ prboom-plus -vidmode gl -complevel 17 -width 1920 -height 1080 -fullscreen -geom 640x360f -aspect 16:9 -iwad ~/games/doom/maps/iwads/doom2.wad -file $(find ~/games/doom/maps/slige/megawad*.wad -type f | shuf -n 1) ~/games/doom/mods/vanilla/sound/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad -save ~/games/doom/savegames/doom2/ -skill 3 -warp $(shuf -i 1-30 -n 1)
$ prboom-plus -vidmode gl -complevel 17 -width 1920 -height 1080 -fullscreen -geom 640x360f -aspect 16:9 -iwad ~/games/doom/maps/iwads/doom2.wad -file ~/games/doom/maps/slige/slige_doom2.wad ~/games/doom/mods/vanilla/sound/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad -save ~/games/doom/savegames/doom2/ -skill 3 -warp 01
> D:\Games\prboom-plus\prboom-plus.exe -vidmode gl -complevel 17 -width 1920 -height 1080 -fullscreen -geom 640x360f -aspect 16:9 -iwad D:\Games\doom\maps\original\doom2.wad -file "D:\Games\doom\maps\slige\megawad$(Get-Date -Format 'yyMMdd').wad" D:\Games\doom\mods\vanilla\sound\pk_doom_sfx\pk_doom_sfx_20120224.wad D:\Games\doom\mods\vanilla\palette\jovian_palette\JoyPal.wad -save D:\Games\doom\savegames\doom2\ -skill 3 -warp 01
```

### Prboom+ (Compiled)
```shell
$ cd ~/games/doom/maps/slige/ && curl -OL https://soulsphere.org/hacks/slige/megawad.zip && unzip megawad.zip && mv megawad.wad megawad$(date +'%y%m%d').wad && mv megawad.txt megawad$(date +'%y%m%d').txt && rm megawad.zip && cd - && ~/src/prboom-plus/prboom2/prboom-plus -config ~/src/prboom-plus/prboom2/prboom-plus.cfg -vidmode gl -complevel 17 -width 1920 -height 1080 -fullscreen -iwad ~/games/doom/maps/iwads/doom2.wad -file ~/games/doom/maps/slige/megawad$(date +'%y%m%d').wad ~/games/doom/mods/vanilla/sound/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad -save ~/games/doom/savegames/doom2/ -skill 3 -warp 01
```

## Gzdoom
```shell
$ cd ~/games/doom/maps/slige/ && curl -OL https://soulsphere.org/hacks/slige/megawad.zip && unzip megawad.zip && mv megawad.wad megawad$(date +'%y%m%d').wad && mv megawad.txt megawad$(date +'%y%m%d').txt && rm megawad.zip && cd - && cd /usr/local/share/games/doom/ && gzdoom -width 1920 -height 1080 -fullscreen -iwad ~/games/doom/maps/iwads/doom2.wad -file ~/games/doom/maps/slige/megawad$(date +'%y%m%d').wad ~/games/doom/mods/vanilla/sound/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad ~/games/doom/mods/zdoom/enhancements/vanilla_essence/vanilla_essence_4_3.pk3 -savedir ~/games/doom/savegames/doom2/ -skill 3 -warp 01
$ cd ~/games/doom/maps/slige/ && curl -OL https://soulsphere.org/hacks/slige/megawad.zip && unzip megawad.zip && mv megawad.wad megawad$(date +'%y%m%d').wad && mv megawad.txt megawad$(date +'%y%m%d').txt && rm megawad.zip && cd - && cd /usr/local/share/games/doom/ && gzdoom -width 1920 -height 1080 -fullscreen -iwad ~/games/doom/maps/iwads/doom2.wad -file $(find ~/games/doom/maps/slige/megawad*.wad -type f | shuf -n 1) ~/games/doom/mods/vanilla/sound/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad ~/games/doom/mods/zdoom/enhancements/vanilla_essence/vanilla_essence_4_3.pk3 -savedir ~/games/doom/savegames/doom2/ -skill 3 -warp 01
$ gzdoom -width 1920 -height 1080 -fullscreen -iwad ~/games/doom/maps/iwads/doom2.wad -file ~/games/doom/maps/slige/megawad$(date +'%y%m%d').wad ~/games/doom/mods/vanilla/sound/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad ~/games/doom/mods/zdoom/enhancements/vanilla_essence/vanilla_essence_4_3.pk3 -savedir ~/games/doom/savegames/doom2/ -skill 3 -warp 01
$ gzdoom -width 1920 -height 1080 -fullscreen -iwad ~/games/doom/maps/iwads/doom2.wad -file ~/games/doom/maps/slige/slige_doom2.wad ~/games/doom/mods/vanilla/sound/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad ~/games/doom/mods/zdoom/enhancements/vanilla_essence/vanilla_essence_4_3.pk3 -savedir ~/games/doom/savegames/doom2/ -skill 3 -warp 01
> D:\Games\gzdoom\gzdoom.exe -width 1920 -height 1080 -fullscreen -config D:\Games\gzdoom\gzdoom.ini -iwad D:\Games\doom\maps\original\doom2.wad -file "D:\Games\doom\maps\slige\megawad$(Get-Date -Format 'yyMMdd').wad" D:\Games\doom\mods\vanilla\sound\pk_doom_sfx\pk_doom_sfx_20120224.wad D:\Games\doom\mods\vanilla\palette\jovian_palette\JoyPal.wad D:\Games\doom\mods\zdoom\vanilla_essence\vanilla_essence_4_3.pk3 -savedir D:\Games\doom\savegames\doom2\ -skill 3 -warp 01
```

### Gzdoom Chex
```shell
$ cd ~/games/doom/maps/slige/ && curl -OL https://soulsphere.org/hacks/slige/megawad.zip && unzip megawad.zip && mv megawad.wad megawad$(date +'%y%m%d').wad && mv megawad.txt megawad$(date +'%y%m%d').txt && rm megawad.zip && cd - && gzdoom -width 1920 -height 1080 -fullscreen -config ~/.config/gzdoom/gzdoom_chex_mouseonly.ini -iwad ~/games/doom/maps/iwads/doom2.wad -file -file ~/games/doom/mods/zdoom/samsara/samsara-v0.3666-beta.pk3 ~/games/doom/mods/zdoom/samsara/SchMonsterMixer.pk3 ~/games/doom/maps/slige/megawad$(date +'%y%m%d').wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad ~/games/doom/mods/zdoom/enhancements/vanilla_essence/vanilla_essence_4_3.pk3 -savedir ~/games/doom/savegames/doom2/ -skill 3 -warp 01
```
