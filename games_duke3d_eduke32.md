# Compilation
## Compilation eduke32 without fury support (git)
```
$ cd ~/src/
$ git clone https://voidpoint.io/terminx/eduke32.git
$ cd eduke32
$ make SDL_TARGET=2
```

## Compilation eduke32 without fury support (snapshots)
```
$ cd ~/src/
$ curl -OL "https://dukeworld.com/eduke32/synthesis/latest/eduke32_src_20210824-9582-072bd40eb.tar.xz"
$ tar -xxvf eduke32_src_20210824-9582-072bd40eb.tar.xz
$ cd eduke32_20210824-9582-072bd40eb/
$ make PACKAGE_REPOSITORY=1
```

# Usage
```
$ eduke32 -grp duke3d.grp -game_dir ~/games/duke3d/
```

## Parameters
```
Usage: eduke32 [files] [options]
Example: eduke32 -usecwd -cfg myconfig.cfg -map nukeland.map

Files can be of type [grp|zip|map|con|def]

-cfg [file.cfg]	Use an alternate configuration file
-clipmap [file.map]	Load an additional clipping map for use with clipshape
-connect [host]	Connect to a multiplayer game
-c#		Multiplayer mode #, 1 = DM, 2 = Co-op, 3 = DM(no spawn)
-d [file.edm or #]	Play a demo
-g [file.grp]	Load additional game data
-h [file.def]	Load an alternate definitions file
-j [dir]		Add a directory to EDuke32's search list
-l#		Start game on level #, see -v
-map [file.map]	Load an external map file
-mh [file.def]	Include an additional definitions module
-mx [file.con]	Include an additional CON script module
-m		Disable enemies
-noffire		Disable friendly fire
-nam		Run in NAM compatibility mode
-napalm		Run in NAPALM compatibility mode
-rts [file.rts]	Load a custom Remote Ridicule sound bank
-r		Record demo
-s#		Start game on skill level #
-server		Start a multiplayer server
-setup/nosetup	Enable or disable startup window
-t#		Respawn mode: 1 = enemies, 2 = weapons, 3 = items, x = all
-usecwd		Read data and configuration from current directory
-u#########	User's favorite weapon order (default: 3425689071)
-v#		Start game on episode #, see -l
-ww2gi		Run in WWII GI compatibility mode
-x [game.con]	Load custom CON script
-#		Load and run a game from slot # (0-9)
```
