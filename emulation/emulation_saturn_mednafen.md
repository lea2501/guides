# Sega Saturn con Mednafen

## Directorios y BIOS

Los juegos de Saturn están en:

```text
/home/lea/games/emu/saturn
```

Mednafen está configurado para usar estos BIOS:

```text
USA y Europa: /home/lea/games/emu/saturn/mpr-17933.bin
Japón:        /home/lea/games/emu/saturn/sega_101.bin
```

Los hashes SHA-256 verificados son:

```text
96e106f740ab448cf89f0dd49dfbac7fe5391cb6bd6e14ad5e3061c13330266f  mpr-17933.bin
dcfef4b99605f872b6c3b6d05c045385cdea3d1b702906a0ed930df7bcb7deac  sega_101.bin
```

Se pueden comprobar nuevamente con:

```sh
sha256sum /home/lea/games/emu/saturn/mpr-17933.bin /home/lea/games/emu/saturn/sega_101.bin
```

Las rutas ya están registradas en `/home/lea/.mednafen/mednafen.cfg`; no hace
falta copiar los BIOS a otro directorio.

## Comando base

```sh
mednafen -force_module ss -video.driver opengl -video.fs 0 -cd.image_memcache 1 "/ruta/al/juego.cue"
```

Cambiar `-video.fs 0` por `-video.fs 1` para iniciar directamente en pantalla
completa. También se puede alternar en cualquier momento con `Alt` + `Enter`.

## Sega Rally Championship

El juego ya está extraído. Para iniciarlo:

```sh
mednafen -force_module ss -video.driver opengl -video.fs 0 -cd.image_memcache 1 "/home/lea/games/emu/saturn/sega-rally/Sega Rally Championship (USA).cue"
```

Para una partida rápida, usar `Time Attack` dentro del juego.

## Bug!

El juego ya está extraído. Para iniciarlo:

```sh
mednafen -force_module ss -video.driver opengl -video.fs 0 -cd.image_memcache 1 "/home/lea/games/emu/saturn/Bug! (USA)/Bug! (USA).cue"
```

Para volver a extraerlo desde el archivo original:

```sh
mkdir -p "/home/lea/games/emu/saturn/Bug! (USA)"
7z x "/home/lea/games/emu/saturn/Bug! (USA).7z" -o"/home/lea/games/emu/saturn/Bug! (USA)"
```

## Bug Too!

Extraerlo una sola vez:

```sh
mkdir -p "/home/lea/games/emu/saturn/Bug Too! (USA)"
7z x "/home/lea/games/emu/saturn/Bug Too! (USA).7z" -o"/home/lea/games/emu/saturn/Bug Too! (USA)"
```

Después iniciarlo con:

```sh
mednafen -force_module ss -video.driver opengl -video.fs 0 -cd.image_memcache 1 "/home/lea/games/emu/saturn/Bug Too! (USA)/Bug Too! (USA).cue"
```

## Primal Rage

Extraerlo una sola vez:

```sh
mkdir -p "/home/lea/games/emu/saturn/Primal Rage (Europe)"
7z x "/home/lea/games/emu/saturn/Primal Rage (Europe) (En,Fr,De,Es,It,Pt).7z" -o"/home/lea/games/emu/saturn/Primal Rage (Europe)"
```

Después iniciarlo con:

```sh
mednafen -force_module ss -video.driver opengl -video.fs 0 -cd.image_memcache 1 "/home/lea/games/emu/saturn/Primal Rage (Europe)/Primal Rage (Europe) (En,Fr,De,Es,It,Pt).cue"
```

## Problemas frecuentes

### Mednafen intenta abrir un `.bin`

Cerrar el emulador y abrir el `.cue`. El `.cue` describe todas las pistas de
datos y audio y sus nombres exactos.

### Falta un BIOS

Comprobar que las rutas activas sean las esperadas:

```sh
grep -E '^ss\.bios_(jp|na_eu)' /home/lea/.mednafen/mednafen.cfg
```

### Hay pausas o cortes de audio

Mantener `-cd.image_memcache 1`. Saturn usa muchas pistas de CD y leer la imagen
completa desde memoria evita esperas del almacenamiento.

### El mando no responde

Con el juego abierto, presionar `Alt` + `Shift` + `1` y completar el mapeo del
puerto 1. Mednafen guarda la asignación para ejecuciones futuras.

### La imagen se ve estirada

Confirmar estas opciones:

```text
ss.correct_aspect 1
ss.stretch aspect_mult2
```
