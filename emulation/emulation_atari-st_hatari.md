# Atari ST con Hatari

Ejecutable local: `~/src/hatari/install/bin/hatari`

Hatari es el emulador principal para las imágenes guardadas en
`~/games/emu/atari_st/`. Emula ST, STE, Mega ST, Mega STE, TT y Falcon, y carga
directamente los formatos habituales de disquete `.st`, `.msa` y `.stx`.

## Instalar o actualizar

```shell
$ ~/src/scripts/devuan/games/install_hatari.sh
```

El script instala las dependencias de compilación de Devuan, clona o actualiza
el repositorio oficial de Framagit en `~/src/hatari/`, compila una versión
Release y la instala localmente en `~/src/hatari/install/`. No reemplaza el
paquete de Hatari de Devuan ni instala archivos en `/usr/local`.

## TOS y EmuTOS

Hatari incluye EmuTOS, que es libre y permite empezar sin firmware propietario.
Para compatibilidad más alta con juegos antiguos conviene usar una copia legal
de TOS 1.04 PAL; TOS 1.02 es una buena segunda alternativa y TOS 2.06 resulta
útil principalmente para STE y configuraciones posteriores.

Guardar las ROMs con estos nombres:

```text
~/games/emu/atari_st/bios/tos104.img
~/games/emu/atari_st/bios/tos102.img
~/games/emu/atari_st/bios/tos206.img
```

El launcher elige automáticamente la primera disponible en ese orden. Para
probar otra ROM sin renombrarla:

```shell
$ TOS_ROM=/ruta/a/tos.img ~/src/scripts/games/play-atari-st.sh JUEGO.st
```

Si no encuentra ninguna, Hatari usa su EmuTOS instalado. Algunos juegos con
rutinas poco compatibles o protecciones de disquete necesitan un TOS original.

## Abrir la interfaz

```shell
$ ~/src/scripts/games/play-atari-st.sh
```

El preset predeterminado es Atari ST. También se puede abrir otro modelo:

```shell
$ ~/src/scripts/games/play-atari-st.sh --machine ste
$ ~/src/scripts/games/play-atari-st.sh --machine falcon
```

Para los juegos actuales de `~/games/emu/atari_st/`, comenzar siempre con
`st`. Usar `ste` sólo cuando el juego o demo lo requiera o tenga mejoras STE.

## Ejecutar un juego

```shell
$ ~/src/scripts/games/play-atari-st.sh \
  "$HOME/games/emu/atari_st/Mach 3/Mach 3 (1987)(Loriciel)[cr BOSS].st"
```

Con un original preservado en STX:

```shell
$ ~/src/scripts/games/play-atari-st.sh \
  "$HOME/games/emu/atari_st/Mach 3/Mach 3 (1987)(Loriciel)(Disk 1 of 2).stx"
```

`.st` suele representar una imagen estándar o crackeada. `.stx` conserva más
información del disquete y sus protecciones, por lo que es preferible para
preservación; si una edición STX no inicia correctamente, probar la copia `.st`
correspondiente.

Para insertar el segundo disco, abrir el menú de Hatari con `F12`, entrar en la
sección de disquetes y reemplazar la imagen de la unidad A cuando el juego lo
solicite.

## Configuración recomendada para juegos ST

```text
Máquina: Atari ST
CPU: 68000, 8 MHz
RAM: 1 MiB
Video: color, PAL
TOS: 1.04 PAL; EmuTOS como alternativa libre
```

- Mantener la emulación compatible/cycle-exact para juegos sensibles al timing.
- No activar blitter o STE por defecto en títulos diseñados para un ST común.
- Conservar relación 4:3 y usar escalado entero cuando resulte posible.
- Si un juego no arranca con EmuTOS, probar TOS 1.04 y después TOS 1.02.
- Guardar configuraciones específicas solamente para excepciones.

## Formatos de esta colección

La colección contiene imágenes `.st`, `.stx` y algunos ZIP. Muchos directorios
ofrecen dumps originales junto con cracks y trainers. Para jugar resulta válido
usar un `.st` limpio; para conservar y probar la edición original, elegir el
`.stx` sin marcas `[a]` o `[b]`.

## Fuentes oficiales

- <https://www.hatari-emu.org/>
- <https://www.hatari-emu.org/download.html>
- <https://www.hatari-emu.org/docs.html>
