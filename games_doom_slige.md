# Resources
```
http://wondersmith.com/rants/slige.htm
https://www.doomworld.com/forum/topic/85548-dos-slige/
```

# Compile
## Compile slige
```
$ cd ~/games/doom/tools/ && curl -O ftp://ftp.fu-berlin.de/pc/games/idgames/source/xwadtools-20010615.tar.gz && tar -xzvf xwadtools-20010615.tar.gz
$ cp -r ~/games/doom/tools/xwadtools/slige ~/games/doom/tools/ && cd ~/games/doom/tools/slige
$ cc -m32 slige.c -o slige
```

## Compile bsp
```
$ cd ~/games/doom/tools/ && curl -O http://games.moria.org.uk/doom/bsp/download/bsp-5.2.tar.bz2 && tar -xjvf bsp-5.2.tar.bz2 && cd bsp-5.2
$ ./configure && make
```

# Usage
```
$ ~/games/doom/tools/slige/slige490/slige -config ~/games/doom/tools/slige/slige490/slige.cfg -doom2 -levels 8 -rooms 18 -map1 -nocustom ~/games/doom/wads/slige/slige_doom2.out
$ ~/games/doom/tools/bsp/bsp-5.2/bsp ~/games/doom/wads/slige/slige_doom2.out ~/games/doom/wads/slige/slige_doom2.wad
$ ~/games/doom/tools/slige/slige490/slige -config ~/games/doom/tools/slige/slige490/slige.cfg -doom -levels 8 -rooms 18 -e1m1 -nocustom ~/games/doom/wads/slige/slige_doom.out
$ ~/games/doom/tools/bsp/bsp-5.2/bsp ~/games/doom/wads/slige/slige_doom.out ~/games/doom/wads/slige/slige_doom.wad
```

## Usage (Wine)
```
$ wine ~/games/doom/tools/slige/slige485/slige.exe -doom2 -levels 1 -rooms 18 -map1 -nocustom ~/games/doom/wads/slige/slige_doom2.out
$ wine ~/games/doom/tools/bsp/bsp-5.1/bsp-w32.exe ~/games/doom/wads/slige/slige_doom2.out ~/games/doom/wads/slige/slige_doom2.wad
$ wine ~/games/doom/tools/slige/slige485/slige.exe -doom -levels 1 -rooms 18 -e1m1 -nocustom ~/games/doom/wads/slige/slige_doom.out
$ wine ~/games/doom/tools/bsp/bsp-5.1/bsp-w32.exe ~/games/doom/wads/slige/slige_doom.out ~/games/doom/wads/slige/slige_doom.wad
```

# Make a custom map and play directly
## Doom 2 prboom+
```
$ ~/games/doom/tools/slige/slige490/slige -config ~/games/doom/tools/slige/slige490/slige.cfg -doom2 -levels 8 -rooms 18 -map1 -bimo -biwe -minlight 180 -nocustom ~/games/doom/wads/slige/slige_doom2.out && ~/games/doom/tools/bsp/bsp-5.2/bsp ~/games/doom/wads/slige/slige_doom2.out -o ~/games/doom/wads/slige/slige_doom2.wad && prboom-plus -vidmode gl -complevel 17 -width 1920 -height 1080 -fullscreen -iwad ~/games/doom/wads/iwads/doom2.wad -file ~/games/doom/wads/slige/slige_doom2.wad ~/games/doom/mods/vanilla/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/jovian_palette/JoyPal.wad -save ~/games/doom/savegames/doom2/ -skill 3 -warp 01
```
## Doom 2 compiled prboom+
```
$ ~/games/doom/tools/slige/slige490/slige -config ~/games/doom/tools/slige/slige490/slige.cfg -doom2 -levels 8 -rooms 18 -map1 -bimo -biwe -minlight 180 -nocustom ~/games/doom/wads/slige/slige_doom2.out && ~/games/doom/tools/bsp/bsp-5.2/bsp ~/games/doom/wads/slige/slige_doom2.out -o ~/games/doom/wads/slige/slige_doom2.wad && ~/src/prboom-plus/prboom2/prboom-plus -config ~/src/prboom-plus/prboom2/prboom-plus.cfg -vidmode gl -complevel 17 -width 1920 -height 1080 -fullscreen -iwad ~/games/doom/wads/iwads/doom2.wad -file ~/games/doom/wads/slige/slige_doom2.wad ~/games/doom/mods/vanilla/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/jovian_palette/JoyPal.wad -save ~/games/doom/savegames/doom2/ -skill 3 -warp 01
```
## Doom 2 gzdoom
```
$ ~/games/doom/tools/slige/slige490/slige -config ~/games/doom/tools/slige/slige490/slige.cfg -doom2 -levels 8 -rooms 18 -map1 -bimo -biwe -minlight 180 -nocustom ~/games/doom/wads/slige/slige_doom2.out && ~/games/doom/tools/bsp/bsp-5.2/bsp ~/games/doom/wads/slige/slige_doom2.out -o ~/games/doom/wads/slige/slige_doom2.wad && gzdoom -width 1920 -height 1080 -fullscreen -iwad ~/games/doom/wads/iwads/doom2.wad -file ~/games/doom/wads/slige/slige_doom2.wad ~/games/doom/mods/vanilla/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/jovian_palette/JoyPal.wad ~/games/doom/mods/zdoom/smoothdoom/smoothdoom.pk3 ~/games/doom/mods/zdoom/smoothdoom/smoothtextures.pk3 ~/games/doom/mods/zdoom/dark_doomz/darkdoomz_v1.6.pk3 -savedir ~/games/doom/savegames/doom2/ -skill 3 -warp 01
$ ~/games/doom/tools/slige/slige490/slige -config ~/games/doom/tools/slige/slige490/slige.cfg -doom2 -levels 8 -rooms 18 -map1 -bimo -biwe -minlight 180 -nocustom ~/games/doom/wads/slige/slige_doom2.out && ~/games/doom/tools/bsp/bsp-5.2/bsp ~/games/doom/wads/slige/slige_doom2.out -o ~/games/doom/wads/slige/slige_doom2.wad && gzdoom -width 1920 -height 1080 -fullscreen -iwad ~/games/doom/wads/iwads/doom2.wad -file ~/games/doom/wads/slige/slige_doom2.wad ~/games/doom/mods/vanilla/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/jovian_palette/JoyPal.wad ~/games/doom/mods/zdoom/dark_doom_creatures/DMGMOD1.1b30c.wad ~/games/doom/mods/zdoom/dark_doom_creatures/DMGMOD1.37d-Gothic-Nightmare-addon.wad ~/games/doom/mods/zdoom/dark_doom_creatures/sm4BBgorev3.pk3 ~/games/doom/mods/zdoom/immerse/immerse_v104.pk3 -savedir ~/games/doom/savegames/doom2/ -skill 3 -warp 01
```
## Doom 1 prboom+
```
$ ~/games/doom/tools/slige/slige490/slige -config ~/games/doom/tools/slige/slige490/slige.cfg -doom -levels 8 -rooms 18 -e1m1 -bimo -biwe -minlight 180 -nocustom ~/games/doom/wads/slige/slige_doom.out && ~/games/doom/tools/bsp/bsp-5.2/bsp ~/games/doom/wads/slige/slige_doom.out -o ~/games/doom/wads/slige/slige_doom.wad && prboom-plus -vidmode gl -complevel 17 -width 1920 -height 1080 -fullscreen -iwad ~/games/doom/wads/original/doom.wad -file ~/games/doom/wads/slige/slige_doom.wad ~/games/doom/mods/vanilla/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/jovian_palette/JoyPal.wad -save ~/games/doom/savegames/doom/ -skill 3 -warp 1 1
```

# Make custom maps until desired one is created
```
$ while true; do ~/games/doom/tools/slige/slige490/slige -config ~/games/doom/tools/slige/slige490/slige.cfg -doom2 -arena -levels 1 -rooms 18 -map01 -bimo! -minlight 180 -biwe ~/games/doom/wads/slige/slige_doom2.out > ~/games/doom/wads/slige/slige_doom2.log && cat ~/games/doom/wads/slige/slige_doom2.log && grep "Extra hugeness" ~/games/doom/wads/slige/slige_doom2.log && break; done && ~/games/doom/tools/bsp/bsp-5.2/bsp ~/games/doom/wads/slige/slige_doom2.out -o ~/games/doom/wads/slige/slige_doom2.wad && prboom-plus -vidmode gl -complevel 17 -width 1920 -height 1080 -fullscreen -geom 640x360f -aspect 16:9 -iwad ~/games/doom/wads/iwads/doom2.wad -file ~/games/doom/wads/slige/slige_doom2.wad ~/games/doom/mods/vanilla/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/jovian_palette/JoyPal.wad -save ~/games/doom/savegames/doom2/ -skill 3 -warp 01
$ while true; do ~/games/doom/tools/slige/slige490/slige -config ~/games/doom/tools/slige/slige490/slige.cfg -doom2 -arena -levels 1 -rooms 18 -map01 -bimo! -minlight 180 -biwe ~/games/doom/wads/slige/slige_doom2.out > ~/games/doom/wads/slige/slige_doom2.log && cat ~/games/doom/wads/slige/slige_doom2.log && grep "Extra hugeness" ~/games/doom/wads/slige/slige_doom2.log && break; done && ~/games/doom/tools/bsp/bsp-5.2/bsp ~/games/doom/wads/slige/slige_doom2.out -o ~/games/doom/wads/slige/slige_doom2.wad && crispy-doom -fullscreen -iwad ~/games/doom/wads/iwads/doom2.wad -file ~/games/doom/wads/slige/slige_doom2.wad ~/games/doom/mods/vanilla/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/jovian_palette/JoyPal.wad -savedir ~/games/doom/savegames/doom2/ -skill 3 -warp 01
$ while true; do ~/games/doom/tools/slige/slige490/slige -config ~/games/doom/tools/slige/slige490/slige.cfg -doom2 -arena -levels 1 -rooms 18 -map01 -bimo! -minlight 180 -biwe ~/games/doom/wads/slige/slige_doom2.out > ~/games/doom/wads/slige/slige_doom2.log && cat ~/games/doom/wads/slige/slige_doom2.log && grep "Extra hugeness" ~/games/doom/wads/slige/slige_doom2.log && break; done && ~/games/doom/tools/bsp/bsp-5.2/bsp ~/games/doom/wads/slige/slige_doom2.out -o ~/games/doom/wads/slige/slige_doom2.wad && gzdoom -width 1920 -height 1080 -fullscreen -iwad ~/games/doom/wads/iwads/doom2.wad -file ~/games/doom/wads/slige/slige_doom2.wad ~/games/doom/mods/vanilla/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/jovian_palette/JoyPal.wad ~/games/doom/mods/zdoom/vanilla_essence/vanilla_essence_4_3.pk3 -savedir ~/games/doom/savegames/doom2/ -skill 3 -warp 01
$ while true; do ~/games/doom/tools/slige/slige490/slige -config ~/games/doom/tools/slige/slige490/slige.cfg -doom2 -arena -levels 1 -rooms 18 -map01 -bimo! -minlight 180 -biwe ~/games/doom/wads/slige/slige_doom2.out > ~/games/doom/wads/slige/slige_doom2.log && cat ~/games/doom/wads/slige/slige_doom2.log && grep "Extra hugeness" ~/games/doom/wads/slige/slige_doom2.log && break; done && ~/games/doom/tools/bsp/bsp-5.2/bsp ~/games/doom/wads/slige/slige_doom2.out -o ~/games/doom/wads/slige/slige_doom2.wad && gzdoom -width 1920 -height 1080 -fullscreen -iwad ~/games/doom/wads/iwads/doom2.wad -file ~/games/doom/wads/slige/slige_doom2.wad ~/games/doom/mods/vanilla/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/jovian_palette/JoyPal.wad ~/games/doom/mods/zdoom/dark_doom_creatures/DMGMOD1.1b30c.wad ~/games/doom/mods/zdoom/dark_doom_creatures/DMGMOD1.37d-Gothic-Nightmare-addon.wad ~/games/doom/mods/zdoom/dark_doom_creatures/sm4BBgorev3.pk3 -savedir ~/games/doom/savegames/doom2/ -skill 3 -warp 01
```

## Special rooms
```
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
```
$ cd ~/games/doom/wads/slige/ && wget https://soulsphere.org/hacks/slige/megawad.zip && unzip megawad.zip && mv megawad.wad megawad$(date +'%y%m%d').wad && mv megawad.txt megawad$(date +'%y%m%d').txt && rm megawad.zip && cd -
```

## Chocolate doom
```
$ cd ~/games/doom/wads/slige/ && wget https://soulsphere.org/hacks/slige/megawad.zip && unzip megawad.zip && mv megawad.wad megawad$(date +'%y%m%d').wad && mv megawad.txt megawad$(date +'%y%m%d').txt && rm megawad.zip && cd - && chocolate-doom -fullscreen -iwad ~/games/doom/wads/iwads/doom2.wad -file ~/games/doom/wads/slige/megawad$(date +'%y%m%d').wad ~/games/doom/mods/vanilla/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/jovian_palette/JoyPal.wad -savedir ~/games/doom/savegames/doom2/ -skill 3 -warp 01
$ cd ~/games/doom/wads/slige/ && wget https://soulsphere.org/hacks/slige/megawad.zip && unzip megawad.zip && mv megawad.wad megawad$(date +'%y%m%d').wad && mv megawad.txt megawad$(date +'%y%m%d').txt && rm megawad.zip && cd - && chocolate-doom -fullscreen -iwad ~/games/doom/wads/iwads/doom2.wad -file $(find ~/games/doom/wads/slige/megawad*.wad -type f | shuf -n 1) ~/games/doom/mods/vanilla/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/jovian_palette/JoyPal.wad -savedir ~/games/doom/savegames/doom2/ -skill 3 -warp 01
$ chocolate-doom -fullscreen -iwad ~/games/doom/wads/iwads/doom2.wad -file ~/games/doom/wads/slige/megawad$(date +'%y%m%d').wad ~/games/doom/mods/vanilla/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/jovian_palette/JoyPal.wad -savedir ~/games/doom/savegames/doom2/ -skill 3 -warp 01
$ chocolate-doom -fullscreen -iwad ~/games/doom/wads/iwads/doom2.wad -file $(find ~/games/doom/wads/slige/megawad*.wad -type f | shuf -n 1) ~/games/doom/mods/vanilla/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/jovian_palette/JoyPal.wad -save ~/games/doom/savegames/doom2/ -skill 3 -warp $(shuf -i 1-30 -n 1)
$ chocolate-doom -fullscreen -iwad ~/games/doom/wads/iwads/doom2.wad -file ~/games/doom/wads/slige/slige_doom2.wad ~/games/doom/mods/vanilla/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/jovian_palette/JoyPal.wad -savedir ~/games/doom/savegames/doom2/ -skill 3 -warp 01
> D:\Games\chocolate-doom\chocolate-doom.exe -fullscreen -iwad D:\Games\doom\wads\original\doom2.wad -file "D:\Games\doom\wads\slige\megawad$(Get-Date -Format 'yyMMdd').wad" D:\Games\doom\mods\vanilla\pk_doom_sfx\pk_doom_sfx_20120224.wad D:\Games\doom\mods\vanilla\jovian_palette\JoyPal.wad -savedir D:\Games\doom\savegames\doom2\ -skill 3 -warp 01
```

## Crispy Doom
```
$ cd ~/games/doom/wads/slige/ && wget https://soulsphere.org/hacks/slige/megawad.zip && unzip megawad.zip && mv megawad.wad megawad$(date +'%y%m%d').wad && mv megawad.txt megawad$(date +'%y%m%d').txt && rm megawad.zip && cd - && crispy-doom -fullscreen -iwad ~/games/doom/wads/iwads/doom2.wad -file ~/games/doom/wads/slige/megawad$(date +'%y%m%d').wad ~/games/doom/mods/vanilla/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/jovian_palette/JoyPal.wad -savedir ~/games/doom/savegames/doom2/ -skill 3 -warp 01
$ cd ~/games/doom/wads/slige/ && wget https://soulsphere.org/hacks/slige/megawad.zip && unzip megawad.zip && mv megawad.wad megawad$(date +'%y%m%d').wad && mv megawad.txt megawad$(date +'%y%m%d').txt && rm megawad.zip && cd - && crispy-doom -fullscreen -iwad ~/games/doom/wads/iwads/doom2.wad -file $(find ~/games/doom/wads/slige/megawad*.wad -type f | shuf -n 1) ~/games/doom/mods/vanilla/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/jovian_palette/JoyPal.wad -savedir ~/games/doom/savegames/doom2/ -skill 3 -warp 01
$ crispy-doom -fullscreen -iwad ~/games/doom/wads/iwads/doom2.wad -file ~/games/doom/wads/slige/megawad$(date +'%y%m%d').wad ~/games/doom/mods/vanilla/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/jovian_palette/JoyPal.wad -savedir ~/games/doom/savegames/doom2/ -skill 3 -warp 01
$ crispy-doom -fullscreen -iwad ~/games/doom/wads/iwads/doom2.wad -file ~/games/doom/wads/slige/megawad$(date +'%y%m%d').wad ~/games/doom/mods/vanilla/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/jovian_palette/JoyPal.wad -savedir ~/games/doom/savegames/doom2/ -skill 3 -warp $(shuf -i 1-30 -n 1)
$ crispy-doom -fullscreen -iwad ~/games/doom/wads/iwads/doom2.wad -file ~/games/doom/wads/slige/slige_doom2.wad ~/games/doom/mods/vanilla/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/jovian_palette/JoyPal.wad -savedir ~/games/doom/savegames/doom2/ -skill 3 -warp 01
$ crispy-doom -fullscreen -iwad ~/games/doom/wads/iwads/doom2.wad -file $(find ~/games/doom/wads/slige/megawad*.wad -type f | shuf -n 1) ~/games/doom/mods/vanilla/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/jovian_palette/JoyPal.wad -save ~/games/doom/savegames/doom2/ -skill 3 -warp $(shuf -i 1-30 -n 1)
> D:\Games\crispy-doom\crispy-doom.exe -fullscreen -iwad D:\Games\doom\wads\original\doom2.wad -file "D:\Games\doom\wads\slige\megawad$(Get-Date -Format 'yyMMdd').wad" D:\Games\doom\mods\vanilla\pk_doom_sfx\pk_doom_sfx_20120224.wad D:\Games\doom\mods\vanilla\jovian_palette\JoyPal.wad -savedir D:\Games\doom\savegames\doom2\ -skill 3 -warp 01
```

## Prboom+
```
$ cd ~/games/doom/wads/slige/ && wget https://soulsphere.org/hacks/slige/megawad.zip && unzip megawad.zip && mv megawad.wad megawad$(date +'%y%m%d').wad && mv megawad.txt megawad$(date +'%y%m%d').txt && rm megawad.zip && cd - && prboom-plus -vidmode gl -complevel 17 -width 1920 -height 1080 -fullscreen -geom 640x360f -aspect 16:9 -iwad ~/games/doom/wads/iwads/doom2.wad -file ~/games/doom/wads/slige/megawad$(date +'%y%m%d').wad ~/games/doom/mods/vanilla/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/jovian_palette/JoyPal.wad -save ~/games/doom/savegames/doom2/ -skill 3 -warp 01
$ cd ~/games/doom/wads/slige/ && wget https://soulsphere.org/hacks/slige/megawad.zip && unzip megawad.zip && mv megawad.wad megawad$(date +'%y%m%d').wad && mv megawad.txt megawad$(date +'%y%m%d').txt && rm megawad.zip && cd - && prboom-plus -vidmode gl -complevel 17 -width 1920 -height 1080 -fullscreen -geom 640x360f -aspect 16:9 -iwad ~/games/doom/wads/iwads/doom2.wad -file $(find ~/games/doom/wads/slige/megawad*.wad -type f | shuf -n 1) ~/games/doom/mods/vanilla/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/jovian_palette/JoyPal.wad -savedir ~/games/doom/savegames/doom2/ -skill 3 -warp 01
$ prboom-plus -vidmode gl -complevel 17 -width 1920 -height 1080 -fullscreen -geom 640x360f -aspect 16:9 -iwad ~/games/doom/wads/iwads/doom2.wad -file ~/games/doom/wads/slige/megawad$(date +'%y%m%d').wad ~/games/doom/mods/vanilla/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/jovian_palette/JoyPal.wad -save ~/games/doom/savegames/doom2/ -skill 3 -warp 01
$ ~/src/prboom-plus/prboom2/prboom-plus -config ~/src/prboom-plus/prboom2/prboom-plus.cfg -vidmode gl -complevel 17 -width 1920 -height 1080 -fullscreen -geom 640x360f -aspect 16:9 -iwad ~/games/doom/wads/iwads/doom2.wad -file ~/games/doom/wads/slige/megawad$(date +'%y%m%d').wad ~/games/doom/mods/vanilla/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/jovian_palette/JoyPal.wad -save ~/games/doom/savegames/doom2/ -skill 3 -warp 01
$ prboom-plus -vidmode gl -complevel 17 -width 1920 -height 1080 -fullscreen -geom 640x360f -aspect 16:9 -iwad ~/games/doom/wads/iwads/doom2.wad -file $(find ~/games/doom/wads/slige/megawad*.wad -type f | shuf -n 1) ~/games/doom/mods/vanilla/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/jovian_palette/JoyPal.wad -save ~/games/doom/savegames/doom2/ -skill 3 -warp $(shuf -i 1-30 -n 1)
$ prboom-plus -vidmode gl -complevel 17 -width 1920 -height 1080 -fullscreen -geom 640x360f -aspect 16:9 -iwad ~/games/doom/wads/iwads/doom2.wad -file ~/games/doom/wads/slige/slige_doom2.wad ~/games/doom/mods/vanilla/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/jovian_palette/JoyPal.wad -save ~/games/doom/savegames/doom2/ -skill 3 -warp 01
> D:\Games\prboom-plus\prboom-plus.exe -vidmode gl -complevel 17 -width 1920 -height 1080 -fullscreen -geom 640x360f -aspect 16:9 -iwad D:\Games\doom\wads\original\doom2.wad -file "D:\Games\doom\wads\slige\megawad$(Get-Date -Format 'yyMMdd').wad" D:\Games\doom\mods\vanilla\pk_doom_sfx\pk_doom_sfx_20120224.wad D:\Games\doom\mods\vanilla\jovian_palette\JoyPal.wad -save D:\Games\doom\savegames\doom2\ -skill 3 -warp 01
```

### Prboom+ (Compiled)
```
$ cd ~/games/doom/wads/slige/ && wget https://soulsphere.org/hacks/slige/megawad.zip && unzip megawad.zip && mv megawad.wad megawad$(date +'%y%m%d').wad && mv megawad.txt megawad$(date +'%y%m%d').txt && rm megawad.zip && cd - && ~/src/prboom-plus/prboom2/prboom-plus -config ~/src/prboom-plus/prboom2/prboom-plus.cfg -vidmode gl -complevel 17 -width 1920 -height 1080 -fullscreen -iwad ~/games/doom/wads/iwads/doom2.wad -file ~/games/doom/wads/slige/megawad$(date +'%y%m%d').wad ~/games/doom/mods/vanilla/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/jovian_palette/JoyPal.wad -save ~/games/doom/savegames/doom2/ -skill 3 -warp 01
```

## Gzdoom
```
$ cd ~/games/doom/wads/slige/ && wget https://soulsphere.org/hacks/slige/megawad.zip && unzip megawad.zip && mv megawad.wad megawad$(date +'%y%m%d').wad && mv megawad.txt megawad$(date +'%y%m%d').txt && rm megawad.zip && cd - && gzdoom -width 1920 -height 1080 -fullscreen -iwad ~/games/doom/wads/iwads/doom2.wad -file ~/games/doom/wads/slige/megawad$(date +'%y%m%d').wad ~/games/doom/mods/vanilla/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/jovian_palette/JoyPal.wad ~/games/doom/mods/zdoom/vanilla_essence/vanilla_essence_4_3.pk3 -savedir ~/games/doom/savegames/doom2/ -skill 3 -warp 01
$ cd ~/games/doom/wads/slige/ && wget https://soulsphere.org/hacks/slige/megawad.zip && unzip megawad.zip && mv megawad.wad megawad$(date +'%y%m%d').wad && mv megawad.txt megawad$(date +'%y%m%d').txt && rm megawad.zip && cd - && gzdoom -width 1920 -height 1080 -fullscreen -iwad ~/games/doom/wads/iwads/doom2.wad -file $(find ~/games/doom/wads/slige/megawad*.wad -type f | shuf -n 1) ~/games/doom/mods/vanilla/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/jovian_palette/JoyPal.wad ~/games/doom/mods/zdoom/vanilla_essence/vanilla_essence_4_3.pk3 -savedir ~/games/doom/savegames/doom2/ -skill 3 -warp 01
$ gzdoom -width 1920 -height 1080 -fullscreen -iwad ~/games/doom/wads/iwads/doom2.wad -file ~/games/doom/wads/slige/megawad$(date +'%y%m%d').wad ~/games/doom/mods/vanilla/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/jovian_palette/JoyPal.wad ~/games/doom/mods/zdoom/vanilla_essence/vanilla_essence_4_3.pk3 -savedir ~/games/doom/savegames/doom2/ -skill 3 -warp 01
$ gzdoom -width 1920 -height 1080 -fullscreen -iwad ~/games/doom/wads/iwads/doom2.wad -file ~/games/doom/wads/slige/slige_doom2.wad ~/games/doom/mods/vanilla/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/jovian_palette/JoyPal.wad ~/games/doom/mods/zdoom/vanilla_essence/vanilla_essence_4_3.pk3 -savedir ~/games/doom/savegames/doom2/ -skill 3 -warp 01
> D:\Games\gzdoom\gzdoom.exe -width 1920 -height 1080 -fullscreen -config D:\Games\gzdoom\gzdoom.ini -iwad D:\Games\doom\wads\original\doom2.wad -file "D:\Games\doom\wads\slige\megawad$(Get-Date -Format 'yyMMdd').wad" D:\Games\doom\mods\vanilla\pk_doom_sfx\pk_doom_sfx_20120224.wad D:\Games\doom\mods\vanilla\jovian_palette\JoyPal.wad D:\Games\doom\mods\zdoom\vanilla_essence\vanilla_essence_4_3.pk3 -savedir D:\Games\doom\savegames\doom2\ -skill 3 -warp 01
```

### Gzdoom Chex
```
$ cd ~/games/doom/wads/slige/ && wget https://soulsphere.org/hacks/slige/megawad.zip && unzip megawad.zip && mv megawad.wad megawad$(date +'%y%m%d').wad && mv megawad.txt megawad$(date +'%y%m%d').txt && rm megawad.zip && cd - && gzdoom -width 1920 -height 1080 -fullscreen -config ~/.config/gzdoom/gzdoom_chex_mouseonly.ini -iwad ~/games/doom/wads/iwads/doom2.wad -file -file ~/games/doom/mods/zdoom/samsara/samsara-v0.3666-beta.pk3 ~/games/doom/mods/zdoom/samsara/SchMonsterMixer.pk3 ~/games/doom/wads/slige/megawad$(date +'%y%m%d').wad ~/games/doom/mods/vanilla/jovian_palette/JoyPal.wad ~/games/doom/mods/zdoom/vanilla_essence/vanilla_essence_4_3.pk3 -savedir ~/games/doom/savegames/doom2/ -skill 3 -warp 01
```
