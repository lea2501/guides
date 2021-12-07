# Get and compile
```
$ cd ~/src && git clone https://github.com/coelckers/prboom-plus.git
$ cd ~/src/prboom-plus/prboom2 && cmake . && make
$ ~/src/prboom-plus/prboom2/prboom-plus
```

# Usage:
```
$ prboom-plus -vidmode gl -complevel 17 -width 1920 -height 1080 -fullscreen -aspect 16:9 -iwad ~/games/doom/wads/iwads/doom2.wad -file ~/games/doom/wads/doom2/ ~/games/doom/mods/vanilla/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/jovian_palette/JoyPal.wad -save ~/games/doom/savegames/doom2/ -skill 3 -warp 01
$ prboom-plus -vidmode gl -complevel 17 -width 1920 -height 1080 -fullscreen -geom 640x360f -aspect 16:9 -iwad ~/games/doom/wads/iwads/doom2.wad -file ~/games/doom/wads/doom2/ ~/games/doom/mods/vanilla/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/jovian_palette/JoyPal.wad ~/games/doom/mods/vanilla/smoothed/smoothed.wad -save ~/games/doom/savegames/doom2/ -deh ~/games/doom/mods/vanilla/dehacked/SUPRWEP8.DEH -skill 3 -warp 01
$ ~/src/prboom-plus/prboom2/prboom-plus -config ~/src/prboom-plus/prboom2/prboom-plus.cfg -vidmode gl -complevel 17 -width 1920 -height 1080 -fullscreen -geom 640x360f -aspect 16:9 -iwad ~/games/doom/wads/iwads/doom2.wad -file ~/games/doom/wads/doom2/ ~/games/doom/mods/vanilla/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/jovian_palette/JoyPal.wad ~/games/doom/mods/vanilla/smoothed/smoothed.wad -save ~/games/doom/savegames/doom2/ -skill 3 -warp 01
> D:\Games\prboom-plus\prboom-plus.exe -vidmode gl -complevel 17 -width 1920 -height 1080 -fullscreen -geom 640x360f -aspect 16:9 -iwad D:\Games\doom\wads\original\doom2.wad -file D:\Games\doom\wads\doom2\ D:\Games\doom\mods\vanilla\pk_doom_sfx\pk_doom_sfx_20120224.wad D:\Games\doom\mods\vanilla\jovian_palette\JoyPal.wad -save D:\Games\doom\savegames\doom2\ -skill 3 -warp 01
```

## Random map from dir:
```
$ export iwad=doom2 && export pwadfile=$(find ~/games/doom/wads/${iwad}/boom/*/*.wad ! -name *tex*.* ! -name *res*.* ! -name *fix.* ! -name *demo*.* -type f | shuf -n 1) && prboom-plus -vidmode gl -complevel 17 -width 1920 -height 1080 -fullscreen -geom 640x360f -aspect 16:9 -iwad ~/games/doom/wads/original/${iwad}.wad -file ${pwadfile} ~/games/doom/mods/vanilla/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/jovian_palette/JoyPal.wad ~/games/doom/mods/vanilla/smoothed/smoothed.wad -save ~/games/doom/savegames/${iwad}/ -skill 3 -warp 01 && echo ${pwadfile}
$ export iwad=doom2 && export pwadfile=$(find ~/games/doom/wads/${iwad}/boom/*/*.wad ! -name *tex*.* ! -name *res*.* ! -name *fix.* ! -name *demo*.* -type f | shuf -n 1) && prboom-plus -vidmode gl -complevel 17 -width 1920 -height 1080 -fullscreen -geom 640x360f -aspect 16:9 -iwad ~/games/doom/wads/original/${iwad}.wad -file ${pwadfile} ~/games/doom/mods/vanilla/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/jovian_palette/JoyPal.wad ~/games/doom/mods/vanilla/smoothed/smoothed.wad -save ~/games/doom/savegames/${iwad}/ -skill 3 -warp $(shuf -i 1-30 -n 1) && echo ${pwadfile}
$ export iwad=doom && export pwadfile=$(find ~/games/doom/wads/${iwad}/boom/*/*.wad ! -name *tex*.* ! -name *res*.* ! -name *fix.* ! -name *demo*.* -type f | shuf -n 1) && prboom-plus -vidmode gl -complevel 17 -width 1920 -height 1080 -fullscreen -geom 640x360f -aspect 16:9 -iwad ~/games/doom/wads/original/${iwad}.wad -file ${pwadfile} ~/games/doom/mods/vanilla/pk_doom_sfx/pk_doom_sfx_20120224.wad ~/games/doom/mods/vanilla/jovian_palette/JoyPal.wad ~/games/doom/mods/vanilla/smoothed/smoothed.wad -save ~/games/doom/savegames/${iwad}/ -skill 3 -warp $(shuf -i 1-4 -n 1) $(shuf -i 1-8 -n 1) && echo ${pwadfile}
```

# options
```
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
```
-geom 320x240f -aspect 4:3
-geom 320x180f -aspect 16:9
```
