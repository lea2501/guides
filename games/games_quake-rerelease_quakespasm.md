# Quake Rerelease with QuakeSpasm

`~/games/quake/` is the classic Quake install with local maps and mods.
`~/games/quake-rerelease/` is the Nightdive/Enhanced install.

Use the rerelease basedir for the new official campaigns so their data is loaded
against the matching Enhanced `id1` package:

```text
~/games/quake-rerelease/dopa/pak0.pak  Dimension of the Past
~/games/quake-rerelease/mg1/pak0.pak   Dimension of the Machine
```

## Run

Dimension of the Past:

```shell
$ quakespasm -width 1920 -height 1080 -fullscreen -basedir ~/games/quake-rerelease/ -heapsize 256000 -zone 4096 -game dopa +map start +skill 1 -fitz
```

Dimension of the Machine:

```shell
$ quakespasm -width 1920 -height 1080 -fullscreen -basedir ~/games/quake-rerelease/ -heapsize 256000 -zone 4096 -game mg1 +map start +skill 1 -fitz
```

## Notes

Both campaigns can also be exposed from `~/games/quake/` with symlinks, but
running them from `~/games/quake-rerelease/` keeps them paired with the Enhanced
base data and avoids overrides from the heavily customized classic `id1`.
