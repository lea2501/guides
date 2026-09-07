# Amiga con Amiberry

Ejecutable local: `~/src/amiberry/install/bin/amiberry`

Amiberry es el emulador principal para los juegos de
`~/games/emu/amiga/`. La versión completa usa el núcleo de WinUAE y admite
imágenes de disquete, archivos comprimidos, WHDLoad y medios de CD32.

## Instalar o actualizar

```shell
$ ~/src/scripts/devuan/games/install_amiberry.sh
```

El script instala las dependencias de compilación de Devuan, clona o actualiza
el repositorio oficial en `~/src/amiberry/`, compila una versión Release y la
instala localmente en `~/src/amiberry/install/`. No instala Amiberry globalmente
en `/usr/local`.

## Firmware Kickstart

Las ROM Kickstart originales son propietarias y no vienen con Amiberry. Guardar
las copias obtenidas legalmente en:

```text
~/games/emu/amiga/bios/
```

Para esta colección resultan útiles:

```text
Kickstart 1.3   A500, la mayoría de los juegos OCS/ECS
Kickstart 3.1   A1200 y juegos AGA
Kickstart CD32  juegos de CD32
```

En el primer arranque, abrir `Paths`, seleccionar ese directorio como ruta de
ROMs y ejecutar `Rescan Paths`. Amiga Forever es una fuente legal habitual para
las ROMs; si están cifradas también hace falta el archivo de clave indicado por
su distribución.

## Abrir la interfaz

```shell
$ ~/src/scripts/games/play-amiga.sh
```

El launcher usa A500 como preset predeterminado. Para abrir directamente otro
modelo sin insertar un juego:

```shell
$ ~/src/scripts/games/play-amiga.sh --model A1200
$ ~/src/scripts/games/play-amiga.sh --model CD32
```

Los presets oficiales de Amiberry configuran automáticamente CPU, chipset y
memoria apropiados. A500 es el punto de partida para los juegos de fines de los
80 y comienzos de los 90; A1200 corresponde a software AGA y CD32 a imágenes de
CD de esa consola.

## Ejecutar un juego

Una imagen ADF o un ZIP que contenga una imagen:

```shell
$ ~/src/scripts/games/play-amiga.sh \
  "$HOME/games/emu/amiga/Baal/Baal (1988)(Psyclapse)[cr Defjam - CCS][t Defjam - CCS].adf"
```

Amiberry reconoce como argumento directo `.adf`, `.adz`, `.dms`, `.ipf`,
`.zip`, `.7z`, configuraciones `.uae`, juegos WHDLoad `.lha` e imágenes de CD.

Para cargar hasta cuatro disquetes inicialmente:

```shell
$ ~/src/scripts/games/play-amiga.sh DISCO_1.adf DISCO_2.adf
```

El launcher los asigna a DF0, DF1, DF2 y DF3. Algunos juegos esperan solamente
DF0 o no admiten unidades externas; en esos casos iniciar con el primer disco y
cambiarlo desde la interfaz cuando el juego lo solicite.

Para juegos AGA:

```shell
$ ~/src/scripts/games/play-amiga.sh --model A1200 JUEGO.adf
```

Para CD32:

```shell
$ ~/src/scripts/games/play-amiga.sh --model CD32 JUEGO.cue
```

Cuando una imagen de CD tiene un `.cue` y uno o más `.bin`, seleccionar siempre
el `.cue`.

## Configuración recomendada

- Mantener PAL a 50 Hz para juegos europeos salvo que la edición indique NTSC.
- Comenzar con `Best compatibility / cycle-exact`.
- Mantener la relación de aspecto original y usar escalado entero si el tamaño
  de la pantalla lo permite.
- Activar `Wait for Blitter` si un juego antiguo falla o corre demasiado rápido.
- Guardar una configuración `.uae` por juego solamente cuando necesite ajustes
  distintos del preset.

## Formatos de esta colección

La colección actual contiene principalmente `.adf` y ZIP con imágenes ADF.
Varios directorios incluyen cracks, trainers, dumps alternativos y archivos
marcados `[b]`; conviene comenzar por una imagen sin `[b]`, sin trainer y con
los discos de la misma variante.

WHDLoad en `.lha` es una buena incorporación futura para evitar cambios de
disquete, pero no es necesario convertir los ADF existentes.

## Fuentes oficiales

- <https://github.com/BlitterStudio/amiberry>
- <https://github.com/BlitterStudio/amiberry/wiki/Quick-start-guide>
- <https://github.com/BlitterStudio/amiberry/wiki/Command-line-reference>
