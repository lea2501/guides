# Yamagi Quake II Remaster

`yquake2remaster` is the experimental Yamagi fork for the Quake II Enhanced
(Nightdive rerelease) data and mods. It is separate from regular Yamagi Quake II.

## Build

```shell
~/src/scripts/devuan/games/install_yquake2remaster.sh
```

The script installs the Debian build dependencies, updates or clones the source
and its submodules, and builds the portable release under:

```text
~/src/yquake2remaster/release/
```

## Game data

Keep the Nightdive data separate from the classic Quake II installation:

```text
~/games/quake2-enhanced/
├── baseq2/
│   └── pak0.pak
└── <mod>/
```

`baseq2/pak0.pak` must be the Enhanced/Remaster file, not the much smaller
classic Quake II PAK.

## Run

Base game:

```shell
~/src/yquake2remaster/release/quake2 -datadir ~/games/quake2-enhanced +set vid_renderer gl3
```

Warehouse Jam 1:

```shell
~/src/yquake2remaster/release/quake2 -datadir ~/games/quake2-enhanced +set game warehousejam1 +set vid_renderer gl3 +gamemap warehousejam1_intro
```

The mod includes a Windows `game_x64.dll`; the engine does not load that DLL on
Linux. `yquake2remaster` supplies its own rerelease-compatible game code, though
the project is experimental and individual mods may expose compatibility gaps.

## Update

Run the install script again. It compares the local checkout with its upstream
branch and only refreshes submodules and rebuilds when remote changes exist.

Upstream documentation:

- https://github.com/yquake2/yquake2remaster
- https://github.com/yquake2/yquake2remaster/blob/master/doc/020_installation.md
