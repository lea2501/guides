# Doom 3 con dhewm3

Guía de comandos copiables. Cada comando está en una sola línea, con rutas desde `~/` y sin depender de variables seteadas antes.

## Estado local validado

- Motor: `~/src/dhewm3/build/dhewm3`
- Datos: `~/games/doom3/`
- Repo local: dhewm3 `1.5.5`, commit `455b88e8dff2be822f08eb498f51b383e851fa38`.
- Doom 3 base arranca con `+quit`.
- Resurrection of Evil arranca con `+quit`.
- The Lost Mission arranca con `+quit` usando `fs_game_base d3xp` y `fs_gameDllPath ~/games/doom3/dhewm3-mods`.
- `e3maps`, `quake` y `sikkmod` arrancan con `+quit`, pero `sikkmod` muestra muchas advertencias de cvars/render features faltantes.

## Build / update

```shell
~/src/scripts/devuan/games/install_dhewm3.sh
```

```shell
cd ~/src/dhewm3/build && cmake ../neo/ && make -j$(nproc)
```

## Juego base

```shell
~/src/dhewm3/build/dhewm3 +set fs_basepath ~/games/doom3 +seta com_allowconsole 1
```

```shell
~/src/dhewm3/build/dhewm3 +set fs_basepath ~/games/doom3 +set r_fullscreen 1 +set r_mode -1 +set r_customWidth 1920 +set r_customHeight 1080 +seta com_allowconsole 1
```

```shell
~/src/dhewm3/build/dhewm3 +set fs_basepath ~/games/doom3 +set r_fullscreen 0 +set r_mode -1 +set r_customWidth 1920 +set r_customHeight 1080 +seta com_allowconsole 1
```

## Resurrection of Evil

```shell
~/src/dhewm3/build/dhewm3 +set fs_basepath ~/games/doom3 +set fs_game d3xp +seta com_allowconsole 1
```

```shell
~/src/dhewm3/build/dhewm3 +set fs_basepath ~/games/doom3 +set fs_game d3xp +set r_fullscreen 1 +set r_mode -1 +set r_customWidth 1920 +set r_customHeight 1080 +seta com_allowconsole 1
```

## The Lost Mission

```shell
~/src/dhewm3/build/dhewm3 +set fs_basepath ~/games/doom3 +set fs_game d3le +set fs_game_base d3xp +set fs_gameDllPath ~/games/doom3/dhewm3-mods +seta com_allowconsole 1
```

```shell
~/src/dhewm3/build/dhewm3 +set fs_basepath ~/games/doom3 +set fs_game d3le +set fs_game_base d3xp +set fs_gameDllPath ~/games/doom3/dhewm3-mods +set r_fullscreen 1 +set r_mode -1 +set r_customWidth 1920 +set r_customHeight 1080 +seta com_allowconsole 1
```

## Mods instalados

### E3 alpha maps

```shell
~/src/dhewm3/build/dhewm3 +set fs_basepath ~/games/doom3 +set fs_game e3maps +seta com_allowconsole 1 +map game/e3_1
```

```shell
~/src/dhewm3/build/dhewm3 +set fs_basepath ~/games/doom3 +set fs_game e3maps +seta com_allowconsole 1 +map game/e3_2
```

```shell
~/src/dhewm3/build/dhewm3 +set fs_basepath ~/games/doom3 +set fs_game e3maps +seta com_allowconsole 1 +map game/e3_3
```

### Doom 3 Quake mod

```shell
~/src/dhewm3/build/dhewm3 +set fs_basepath ~/games/doom3 +set fs_game quake +seta com_allowconsole 1 +map castle
```

### SikkMod

SikkMod arranca, pero no es una combinación limpia con dhewm3: el log muestra muchas advertencias de cvars gráficas faltantes. Úsalo como experimental.

```shell
~/src/dhewm3/build/dhewm3 +set fs_basepath ~/games/doom3 +set fs_game sikkmod +seta com_allowconsole 1
```

```shell
~/src/dhewm3/build/dhewm3 +set fs_basepath ~/games/doom3 +set fs_game sikkmodd3xp +set fs_game_base d3xp +seta com_allowconsole 1
```

## Saltar a un mapa

```shell
~/src/dhewm3/build/dhewm3 +set fs_basepath ~/games/doom3 +seta com_allowconsole 1 +map game/alphalabs1
```

```shell
~/src/dhewm3/build/dhewm3 +set fs_basepath ~/games/doom3 +set fs_game d3xp +seta com_allowconsole 1 +map game/erebus1
```

```shell
~/src/dhewm3/build/dhewm3 +set fs_basepath ~/games/doom3 +set fs_game d3le +set fs_game_base d3xp +set fs_gameDllPath ~/games/doom3/dhewm3-mods +seta com_allowconsole 1 +map game/le_underground
```

## Mapa aleatorio

```shell
~/src/dhewm3/build/dhewm3 +set fs_basepath ~/games/doom3 +seta com_allowconsole 1 +map game/$(basename "$(unzip -Z1 ~/games/doom3/base/pak000.pk4 | grep '^maps/game/.*\.map$' | grep -v '^maps/game/mp/' | shuf -n 1)" .map)
```

```shell
~/src/dhewm3/build/dhewm3 +set fs_basepath ~/games/doom3 +set fs_game d3xp +seta com_allowconsole 1 +map game/$(basename "$(unzip -Z1 ~/games/doom3/d3xp/pak000.pk4 | grep '^maps/game/.*\.map$' | grep -v '^maps/game/mp/' | shuf -n 1)" .map)
```

## Consola y cheats útiles

```text
Ctrl+Alt+~ abre la consola siempre; con +seta com_allowconsole 1 también debería abrir con ~.
```

```text
map game/alphalabs1
```

```text
give all
```

```text
give weapon_bfg
```

```text
give weapon_chaingun
```

```text
give weapon_chainsaw
```

```text
give weapon_machinegun
```

```text
give weapon_plasmagun
```

```text
give weapon_rocketlauncher
```

```text
give weapon_shotgun
```

```text
god
```

```text
noclip
```

## Notas de integridad

- Los hashes MD5 oficiales de `base/pak000.pk4` a `base/pak004.pk4` coinciden con los de referencia del instalador Linux de Doom 3.
- El hash MD5 oficial de `d3xp/pak000.pk4` coincide con el de referencia de Resurrection of Evil.
- Todos los `.pk4` tipo ZIP de primer nivel pasan `unzip -t`.
- En `~/games/doom3/e3maps/` hay tres `.pk4` que no son ZIP sino RAR renombrados: `e3_adetails2.pk4`, `e3_details2.pk4`, `e3_e32k2_maps_plus.pk4`. dhewm3 puede arrancar el mod, pero esos tres archivos son sospechosos/legacy; los mapas principales están en `zzz_e32k2_maps.pk4`.
