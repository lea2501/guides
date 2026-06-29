# Descent clásico con DXX-Rebirth

Guía pensada para copiar y pegar comandos. Cada comando está en una sola línea, con rutas desde `~/` y sin depender de variables seteadas antes.

## Dependencias

### Arch

```shell
sudo pacman -S base-devel scons sdl2 sdl2_image sdl2_mixer physfs
```

### Debian / Ubuntu

```shell
sudo apt-get install build-essential scons libsdl2-dev libsdl2-image-dev libsdl2-mixer-dev libphysfs-dev
```

## Descargar / compilar DXX-Rebirth

```shell
mkdir -p ~/src && cd ~/src && git clone https://github.com/dxx-rebirth/dxx-rebirth.git
```

```shell
cd ~/src/dxx-rebirth && scons sdl2=1 builddir_prefix=build/
```

```shell
cd ~/src/dxx-rebirth && scons sdl2=1 d1x=1 builddir_prefix=build/
```

```shell
cd ~/src/dxx-rebirth && scons sdl2=1 d2x=1 builddir_prefix=build/
```

## Ejecutables locales actuales

```shell
~/src/dxx-rebirth/build/linux-4c09416b-ltoogl/d1x-rebirth/d1x-rebirth -help
```

```shell
~/src/dxx-rebirth/build/linux-4c09416b-ltoogl/d2x-rebirth/d2x-rebirth -help
```

## Juegos base

```shell
~/src/dxx-rebirth/build/linux-4c09416b-ltoogl/d1x-rebirth/d1x-rebirth -hogdir ~/games/descent/descent1 -window -notitles -nomovies
```

```shell
~/src/dxx-rebirth/build/linux-4c09416b-ltoogl/d2x-rebirth/d2x-rebirth -hogdir ~/games/descent/descent2 -window -notitles -nomovies
```

## Misiones oficiales instaladas

En DXX-Rebirth elegí la misión desde el menú del juego después de abrirlo.

### Descent 1

```shell
~/src/dxx-rebirth/build/linux-4c09416b-ltoogl/d1x-rebirth/d1x-rebirth -hogdir ~/games/descent/descent1 -add-missions-dir ~/games/descent/missions/d1/official/chaos -window -notitles -nomovies
```

```shell
~/src/dxx-rebirth/build/linux-4c09416b-ltoogl/d1x-rebirth/d1x-rebirth -hogdir ~/games/descent/descent1 -add-missions-dir ~/games/descent/missions/d1/official/levels-of-the-world -window -notitles -nomovies
```

```shell
~/src/dxx-rebirth/build/linux-4c09416b-ltoogl/d1x-rebirth/d1x-rebirth -hogdir ~/games/descent/descent1 -add-missions-dir ~/games/descent/missions/d1/official/dimensions-for-descent -window -notitles -nomovies
```

```shell
~/src/dxx-rebirth/build/linux-4c09416b-ltoogl/d1x-rebirth/d1x-rebirth -hogdir ~/games/descent/descent1 -add-missions-dir ~/games/descent/missions/d1/official -window -notitles -nomovies
```

### Descent 2

```shell
~/src/dxx-rebirth/build/linux-4c09416b-ltoogl/d2x-rebirth/d2x-rebirth -hogdir ~/games/descent/descent2 -add-missions-dir ~/games/descent/missions/d2 -window -notitles -nomovies
```

```shell
~/src/dxx-rebirth/build/linux-4c09416b-ltoogl/d2x-rebirth/d2x-rebirth -hogdir ~/games/descent/descent2 -add-missions-dir ~/games/descent/missions/d2/official/chaos -window -notitles -nomovies
```

```shell
~/src/dxx-rebirth/build/linux-4c09416b-ltoogl/d2x-rebirth/d2x-rebirth -hogdir ~/games/descent/descent2 -add-missions-dir ~/games/descent/missions/d2/official/two-player -window -notitles -nomovies
```

```shell
~/src/dxx-rebirth/build/linux-4c09416b-ltoogl/d2x-rebirth/d2x-rebirth -hogdir ~/games/descent/descent2 -add-missions-dir ~/games/descent/missions/d2/official/vertigo-bonus -window -notitles -nomovies
```

## Misiones community recomendadas instaladas

### Descent 1

```shell
~/src/dxx-rebirth/build/linux-4c09416b-ltoogl/d1x-rebirth/d1x-rebirth -hogdir ~/games/descent/descent1 -add-missions-dir ~/games/descent/missions/d1/community/descent-vignettes -window -notitles -nomovies
```

```shell
~/src/dxx-rebirth/build/linux-4c09416b-ltoogl/d1x-rebirth/d1x-rebirth -hogdir ~/games/descent/descent1 -add-missions-dir ~/games/descent/missions/d1/community/trine-episode-1 -window -notitles -nomovies
```

```shell
~/src/dxx-rebirth/build/linux-4c09416b-ltoogl/d1x-rebirth/d1x-rebirth -hogdir ~/games/descent/descent1 -add-missions-dir ~/games/descent/missions/d1/community/trine-episode-2 -window -notitles -nomovies
```

```shell
~/src/dxx-rebirth/build/linux-4c09416b-ltoogl/d1x-rebirth/d1x-rebirth -hogdir ~/games/descent/descent1 -add-missions-dir ~/games/descent/missions/d1/community/cererian-expedition -window -notitles -nomovies
```

```shell
~/src/dxx-rebirth/build/linux-4c09416b-ltoogl/d1x-rebirth/d1x-rebirth -hogdir ~/games/descent/descent1 -add-missions-dir ~/games/descent/missions/d1/community/apocalyptic-factor -window -notitles -nomovies
```

```shell
~/src/dxx-rebirth/build/linux-4c09416b-ltoogl/d1x-rebirth/d1x-rebirth -hogdir ~/games/descent/descent1 -add-missions-dir ~/games/descent/missions/d1/community/dont-panic -window -notitles -nomovies
```

### Descent 2

```shell
~/src/dxx-rebirth/build/linux-4c09416b-ltoogl/d2x-rebirth/d2x-rebirth -hogdir ~/games/descent/descent2 -add-missions-dir ~/games/descent/missions/d2/community/plutonian-shores -window -notitles -nomovies
```

```shell
~/src/dxx-rebirth/build/linux-4c09416b-ltoogl/d2x-rebirth/d2x-rebirth -hogdir ~/games/descent/descent2 -add-missions-dir ~/games/descent/missions/d2/community/the-enemy-within-15th-anniversary -window -notitles -nomovies
```

```shell
~/src/dxx-rebirth/build/linux-4c09416b-ltoogl/d2x-rebirth/d2x-rebirth -hogdir ~/games/descent/descent2 -add-missions-dir ~/games/descent/missions/d2/community/the-enemy-within-original -window -notitles -nomovies
```

```shell
~/src/dxx-rebirth/build/linux-4c09416b-ltoogl/d2x-rebirth/d2x-rebirth -hogdir ~/games/descent/descent2 -add-missions-dir ~/games/descent/missions/d2/community/obsidian -window -notitles -nomovies
```

```shell
~/src/dxx-rebirth/build/linux-4c09416b-ltoogl/d2x-rebirth/d2x-rebirth -hogdir ~/games/descent/descent2 -add-missions-dir ~/games/descent/missions/d2/community/entropy-experiment -window -notitles -nomovies
```

```shell
~/src/dxx-rebirth/build/linux-4c09416b-ltoogl/d2x-rebirth/d2x-rebirth -hogdir ~/games/descent/descent2 -add-missions-dir ~/games/descent/missions/d2/community/entropy-experiment-2 -window -notitles -nomovies
```

```shell
~/src/dxx-rebirth/build/linux-4c09416b-ltoogl/d2x-rebirth/d2x-rebirth -hogdir ~/games/descent/descent2 -add-missions-dir ~/games/descent/missions/d2/community/enemy-vignettes -window -notitles -nomovies
```

```shell
~/src/dxx-rebirth/build/linux-4c09416b-ltoogl/d2x-rebirth/d2x-rebirth -hogdir ~/games/descent/descent2 -add-missions-dir ~/games/descent/missions/d2/community/descent-maximum -window -notitles -nomovies
```

```shell
~/src/dxx-rebirth/build/linux-4c09416b-ltoogl/d2x-rebirth/d2x-rebirth -hogdir ~/games/descent/descent2 -add-missions-dir ~/games/descent/missions/d2/community/project-kcx-f2 -window -notitles -nomovies
```

## Abrir con todas las carpetas community

Esto mete muchas misiones en el selector. Útil para explorar, menos limpio que abrir un pack puntual.

```shell
~/src/dxx-rebirth/build/linux-4c09416b-ltoogl/d1x-rebirth/d1x-rebirth -hogdir ~/games/descent/descent1 -add-missions-dir ~/games/descent/missions/d1/community -window -notitles -nomovies
```

```shell
~/src/dxx-rebirth/build/linux-4c09416b-ltoogl/d2x-rebirth/d2x-rebirth -hogdir ~/games/descent/descent2 -add-missions-dir ~/games/descent/missions/d2/community -window -notitles -nomovies
```

## Notas

- `-hogdir` apunta a los datos originales del juego.
- `-add-missions-dir` agrega una carpeta de misiones al selector interno de DXX-Rebirth.
- Si dos packs tienen el mismo nombre interno de misión, abrilos por separado para evitar confusión en el menú.
- Vertigo queda cubierto por `-add-missions-dir ~/games/descent/missions/d2`, porque `d2x.hog` y `d2x.mn2` están directamente en esa carpeta.
- La música FLAC de Vertigo está en `~/games/descent/music/d2/vertigo/vertigo.m3u`; si querés usarla, configurala desde el menú de música/jukebox de DXX-Rebirth.
