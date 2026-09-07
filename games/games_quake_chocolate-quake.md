# Quake con Chocolate Quake

Ejecutable local: `~/src/chocolate-quake/build/src/chocolate-quake`

## Juego base

```shell
$ ~/src/chocolate-quake/build/src/chocolate-quake -basedir ~/games/quake -game id1
```

## Mod o mapa

El valor de `-game` es el directorio del mod dentro de `~/games/quake` y
`+map` recibe el nombre del BSP sin la extensión.

```shell
$ ~/src/chocolate-quake/build/src/chocolate-quake -basedir ~/games/quake -game GAME_DIR +map MAP_BSP +skill 1
```

Chocolate Quake busca reproducir el comportamiento original. Para mapas
modernos que excedan los límites de Quake conviene utilizar Ironwail.
