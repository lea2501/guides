# Get and compile
```shell
$ cd ~/src && git clone https://github.com/kraflab/dsda-doom.git
$ cd ~/src/dsda-doom/prboom2 && mkdir -p build && cd build && cmake .. -DCMAKE_BUILD_TYPE=Release && make
$ ~/src/dsda-doom/prboom2/build/dsda-doom
```

# Usage
```shell
$ dsda-doom -config ~/games/doom/config/dsda-doom/dsda-doom_vanilla.cfg -vidmode gl -complevel 17 -width 1920 -height 1080 -fullscreen -aspect 16:9 -iwad ~/games/doom/maps/iwads/doom2.wad -file ~/games/doom/maps/doom2/{vanilla,limit-removing,boom}/ ~/games/doom/mods/vanilla/sound/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad -save ~/games/doom/savegames/doom2/ -skill 3 -warp 01
$ dsda-doom -config ~/games/doom/config/dsda-doom/dsda-doom_vanilla.cfg -vidmode gl -complevel 17 -width 1920 -height 1080 -fullscreen -geom 640x360f -aspect 16:9 -iwad ~/games/doom/maps/iwads/doom2.wad -file ~/games/doom/maps/doom2/{vanilla,limit-removing,boom}/ ~/games/doom/mods/vanilla/sound/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad ~/games/doom/mods/vanilla/smoothed/smoothed.wad -save ~/games/doom/savegames/doom2/ -deh ~/games/doom/mods/vanilla/dehacked/SUPRWEP8.DEH -skill 3 -warp 01
$ ~/src/dsda-doom/prboom2/dsda-doom -config games/doom/config/dsda-doom/dsda-doom_boom.cfg -vidmode gl -complevel 17 -width 1920 -height 1080 -fullscreen -geom 640x360f -aspect 16:9 -iwad ~/games/doom/maps/iwads/doom2.wad -file ~/games/doom/maps/doom2/{vanilla,limit-removing,boom}/ ~/games/doom/mods/vanilla/sound/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad ~/games/doom/mods/vanilla/smoothed/smoothed.wad -save ~/games/doom/savegames/doom2/ -skill 3 -warp 01
> D:\Games\dsda-doom\dsda-doom.exe -vidmode gl -complevel 17 -width 1920 -height 1080 -fullscreen -geom 640x360f -aspect 16:9 -iwad D:\Games\doom\maps\original\doom2.wad -file D:\Games\doom\maps\doom2\ D:\Games\doom\mods\vanilla\sound\pk_doom_sfx\pk_doom_sfx_20120224.wad D:\Games\doom\mods\vanilla\palette\jovian_palette\JoyPal.wad -save D:\Games\doom\savegames\doom2\ -skill 3 -warp 01
```

## Random map from dir:
```shell
$ export iwad=doom2 && export pwadfile=$(find ~/games/doom/maps/${iwad}/{vanilla,limit-removing,boom}/*/*.wad ! -name *tex*.* ! -name *res*.* ! -name *fix.* ! -name *demo*.* -type f | shuf -n 1) && dsda-doom -config ~/games/doom/config/dsda-doom/dsda-doom_vanilla.cfg -vidmode gl -complevel 17 -width 1920 -height 1080 -fullscreen -geom 640x360f -aspect 16:9 -iwad ~/games/doom/maps/original/${iwad}.wad -file ${pwadfile} ~/games/doom/mods/vanilla/sound/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad -save ~/games/doom/savegames/${iwad}/ -skill 3 -warp 01 && echo ${pwadfile}
$ export iwad=doom2 && export pwadfile=$(find ~/games/doom/maps/${iwad}/{vanilla,limit-removing,boom}/*/*.wad ! -name *tex*.* ! -name *res*.* ! -name *fix.* ! -name *demo*.* -type f | shuf -n 1) && dsda-doom -config ~/games/doom/config/dsda-doom/dsda-doom_vanilla.cfg -vidmode gl -complevel 17 -width 1920 -height 1080 -fullscreen -geom 640x360f -aspect 16:9 -iwad ~/games/doom/maps/original/${iwad}.wad -file ${pwadfile} ~/games/doom/mods/vanilla/sound/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad -save ~/games/doom/savegames/${iwad}/ -skill 3 -warp $(shuf -i 1-30 -n 1) && echo ${pwadfile}
$ export iwad=doom && export pwadfile=$(find ~/games/doom/maps/${iwad}/{vanilla,limit-removing,boom}/*/*.wad ! -name *tex*.* ! -name *res*.* ! -name *fix.* ! -name *demo*.* -type f | shuf -n 1) && dsda-doom -config ~/games/doom/config/dsda-doom/dsda-doom_vanilla.cfg -vidmode gl -complevel 17 -width 1920 -height 1080 -fullscreen -geom 640x360f -aspect 16:9 -iwad ~/games/doom/maps/original/${iwad}.wad -file ${pwadfile} ~/games/doom/mods/vanilla/sound/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/palette/jovian_palette/JovPal.wad -save ~/games/doom/savegames/${iwad}/ -skill 3 -warp $(shuf -i 1-4 -n 1) $(shuf -i 1-8 -n 1) && echo ${pwadfile}
```

# Mods
```shell
$ find ~/games/doom/mods/vanilla/*/*.wad
```

# options
```shell
-noaccel
-complevel lvl - This sets the compatibility mode that PrBoom runs in. If you need to change this, see README.compat.
	2-Doom v1.9
	3-Ultimate Doom
	4-Final Doom & Doom95
	8-Boom v2.01 / 
	9-Boom v2.02
	11-MBF
	12—16-PrBoom (old versions)
	17-Current PrBoom
	
	-complevel 1.9 = -complevel 2
	-complevel doom2 = -complevel 2
	-complevel ultimate = -complevel 3
	-complevel udoom = -complevel 3
	-complevel final = -complevel 4
	-complevel tnt = -complevel 4
	-complevel plutonia = -complevel 4
	-complevel boom = -complevel 9
	-complevel mbf = -complevel 11
	-complevel vanilla = complevel autodetected according to IWAD loaded
```

## Oldschool look
```text
-geom 320x240f -aspect 4:3
-geom 320x180f -aspect 16:9
```
