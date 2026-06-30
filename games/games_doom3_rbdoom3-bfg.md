# Doom 3 BFG / RBDOOM3-BFG

Estado local: no encontré una instalación de RBDOOM3-BFG ni datos de Doom 3 BFG en `~/src` o `~/games`. Esta guía queda sólo como nota para no confundirla con dhewm3.

## Diferencia importante

- `dhewm3` usa los datos clásicos de Doom 3: `base/pak000.pk4` a `base/pak008.pk4` y `d3xp/pak000.pk4`.
- RBDOOM3-BFG usa Doom 3: BFG Edition, que tiene otra estructura de datos.
- Doom 3 BFG Edition no es soportado por dhewm3.

## Pendiente si se instala RBDOOM3-BFG

```shell
~/src/rbdoom3-bfg/build/RBDoom3BFG +set fs_basepath ~/games/doom3-bfg
```

```shell
~/src/rbdoom3-bfg/build/RBDoom3BFG +set fs_basepath ~/games/doom3-bfg +set com_allowConsole 1
```
