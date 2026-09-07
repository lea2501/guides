# Quake con Ironwail

Ejecutable local: `~/src/ironwail/Quake/ironwail`

## Juego base

```shell
$ ~/src/ironwail/Quake/ironwail -basedir ~/games/quake -game id1 +exec autoexec.cfg
```

## Mod o paquete de mapas

El valor de `-game` es el nombre del directorio situado dentro de
`~/games/quake`; `+map` recibe el nombre del BSP sin la extensión.

```shell
$ ~/src/ironwail/Quake/ironwail -basedir ~/games/quake -game GAME_DIR +map MAP_BSP +skill 1 +exec ~/games/quake/id1/autoexec.cfg
```

Por ejemplo, para iniciar Dwell desde su mapa de comienzo:

```shell
$ ~/src/ironwail/Quake/ironwail -basedir ~/games/quake -game dwell +map start +skill 1 +exec ~/games/quake/id1/autoexec.cfg
```

## Mapa al azar

```shell
$ mapfile=$(find ~/games/quake/*/maps -maxdepth 1 -type f -iname '*.bsp' | shuf -n 1) && gamedir=$(basename "$(dirname "$(dirname "$mapfile")")") && mapname=$(basename "$mapfile" .bsp) && ~/src/ironwail/Quake/ironwail -basedir ~/games/quake -game "$gamedir" +map "$mapname" +skill 1 +exec ~/games/quake/id1/autoexec.cfg && printf '%s\n' "$mapfile"
```
