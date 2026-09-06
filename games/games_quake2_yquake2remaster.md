# Yamagi Quake II Remaster

`-datadir` debe apuntar al directorio que contiene `baseq2` y los
directorios de los mods. No hay que ejecutarlo desde el directorio
`release`.

## Video

### 1920x1080 en pantalla completa exclusiva

```shell
~/src/yquake2remaster/release/quake2 -datadir ~/games/quake2-remaster +set r_customwidth 1920 +set r_customheight 1080 +set r_mode -1 +set vid_fullscreen 1 +set vid_renderer gl3 +set r_vsync 1
```

`r_mode -1` habilita la resolución indicada por `r_customwidth` y
`r_customheight`. `vid_fullscreen 1` cambia el modo de video del monitor.

### Resolución nativa en ventana sin bordes

```shell
~/src/yquake2remaster/release/quake2 -datadir ~/games/quake2-remaster +set r_mode -2 +set vid_fullscreen 2 +set vid_renderer gl3 +set r_vsync 1
```

Esta variante usa la resolución actual del escritorio y suele ser más
cómoda para alternar con otras ventanas.

Valores de `vid_fullscreen`:

- `0`: ventana.
- `1`: pantalla completa exclusiva.
- `2`: ventana sin bordes a pantalla completa; usar junto con `r_mode -2`.

El renderer recomendado es `gl3`. También están compilados `vk`, `gl4`,
`gles3`, `gl1` y `soft`; se seleccionan con `+set vid_renderer NOMBRE`.

Para guardar la configuración desde la consola del juego:

```text
seta r_customwidth 1920
seta r_customheight 1080
seta r_mode -1
seta vid_fullscreen 1
seta vid_renderer gl3
seta r_vsync 1
vid_restart
```

Para ver las resoluciones aceptadas, abrir la consola y ejecutar
`r_listmodes`.

## Juego base y mods instalados

Cada ejemplo es independiente y se puede copiar y pegar directamente.
Todos incluyen 1920x1080, pantalla completa exclusiva, OpenGL 3.2,
sincronización vertical y no fuerzan ningún contador de FPS.

### Quake II Remaster

```shell
~/src/yquake2remaster/release/quake2 -datadir ~/games/quake2-remaster +set r_customwidth 1920 +set r_customheight 1080 +set r_mode -1 +set vid_fullscreen 1 +set vid_renderer gl3 +set r_vsync 1 +set game baseq2
```

### Mine Jam 1

```shell
~/src/yquake2remaster/release/quake2 -datadir ~/games/quake2-remaster +set r_customwidth 1920 +set r_customheight 1080 +set r_mode -1 +set vid_fullscreen 1 +set vid_renderer gl3 +set r_vsync 1 +set game minejam1 +set skill 1 +gamemap minejam1_intro
```

### Warehouse Jam 1

```shell
~/src/yquake2remaster/release/quake2 -datadir ~/games/quake2-remaster +set r_customwidth 1920 +set r_customheight 1080 +set r_mode -1 +set vid_fullscreen 1 +set vid_renderer gl3 +set r_vsync 1 +set game warehousejam1 +set skill 1 +gamemap warehousejam1_intro
```

### Quake II PSX 1.2

```shell
~/src/yquake2remaster/release/quake2 -datadir ~/games/quake2-remaster +set r_customwidth 1920 +set r_customheight 1080 +set r_mode -1 +set vid_fullscreen 1 +set vid_renderer gl3 +set r_vsync 1 +set game psx +newgame_psx
```

El comando carga directamente una partida nueva de la campaña PSX.

### PSX Jam 1

```shell
~/src/yquake2remaster/release/quake2 -datadir ~/games/quake2-remaster +set r_customwidth 1920 +set r_customheight 1080 +set r_mode -1 +set vid_fullscreen 1 +set vid_renderer gl3 +set r_vsync 1 +set game psxjam1 +set skill 1 +gamemap psxjam1_start
```

### N64 Jam I

N64 Jam I está instalado directamente dentro de `baseq2`, tal como indica
su documentación; no tiene un directorio de juego independiente.

```shell
~/src/yquake2remaster/release/quake2 -datadir ~/games/quake2-remaster +set r_customwidth 1920 +set r_customheight 1080 +set r_mode -1 +set vid_fullscreen 1 +set vid_renderer gl3 +set r_vsync 1 +set game baseq2 +set skill 1 +gamemap n64jam_intro
```

### N64 Jam II

```shell
~/src/yquake2remaster/release/quake2 -datadir ~/games/quake2-remaster +set r_customwidth 1920 +set r_customheight 1080 +set r_mode -1 +set vid_fullscreen 1 +set vid_renderer gl3 +set r_vsync 1 +set game n64jam2 +set skill 1 +gamemap n64jam2_intro
```

### Call of the Void 3.0

```shell
~/src/yquake2remaster/release/quake2 -datadir ~/games/quake2-remaster +set r_customwidth 1920 +set r_customheight 1080 +set r_mode -1 +set vid_fullscreen 1 +set vid_renderer gl3 +set r_vsync 1 +set game q1q2 +newgame_q1q2
```

El comando usa la entrada de campaña `newgame_q1q2` declarada por el mod.
Al actualizar entre versiones mayores conviene iniciar una partida nueva:
los mapas modificados pueden volver incompatibles las partidas guardadas
anteriores.

## Compatibilidad actual

yquake2remaster todavía enumera el soporte completo de single player de
la re-release y el código de juego modificado como trabajo pendiente. Si
un PAK verificado abre su menú pero falla al comenzar la partida, revisar
`~/.yq2/NOMBRE_DEL_MOD/qconsole.log`: puede ser una incompatibilidad del
source port y no una instalación incompleta.

## Dificultad

`skill` utiliza estos valores antes de cargar el primer mapa:

- `0`: fácil.
- `1`: normal.
- `2`: difícil.
- `3`: pesadilla.
