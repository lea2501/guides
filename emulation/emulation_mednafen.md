# Mednafen

## Instalación disponible

En esta máquina Mednafen está instalado desde los paquetes de Debian/Devuan:

```sh
mednafen -version
```

La configuración personal se guarda en:

```text
/home/lea/.mednafen/mednafen.cfg
```

La configuración actual usa OpenGL, abre inicialmente en una ventana y conserva
la relación de aspecto:

```text
video.driver opengl
video.fs 0
ss.correct_aspect 1
ss.stretch aspect_mult2
```

## Uso general

Para iniciar una imagen, pasarle a Mednafen el archivo principal del juego:

```sh
mednafen "/ruta/al/juego.cue"
```

Para juegos en CD con varias pistas siempre se abre el archivo `.cue`; no se
debe abrir una pista `.bin` individual. Mednafen tampoco abre directamente los
archivos `.7z`: primero hay que extraerlos.

Opciones útiles para juegos en CD:

```sh
mednafen -video.driver opengl -video.fs 0 -cd.image_memcache 1 "/ruta/al/juego.cue"
```

`cd.image_memcache 1` carga la imagen en memoria para evitar pausas y pequeños
cortes de audio durante las lecturas del CD.

## Controles de Mednafen

- `Alt` + `Shift` + `1`: configurar el mando del puerto 1. Presionar cada botón
  solicitado; una entrada se puede omitir manteniéndola sin asignar.
- `Alt` + `Enter`: alternar entre ventana y pantalla completa.
- `Esc`: cerrar la emulación.
- `F5`: guardar un estado rápido.
- `F7`: cargar el estado rápido.
- Teclas `0` a `9`: seleccionar el slot de estado.

Es preferible configurar y jugar con joystick. Para Saturn se emula inicialmente
el gamepad digital normal; el mando analógico 3D se puede seleccionar después si
un juego realmente lo necesita.

## Sonido

La configuración actual ya utiliza SDL:

```text
sound.driver sdl
```

Si alguna instalación basada en ALSA no encuentra el dispositivo de sonido, se
puede usar el dispositivo ALSA lógico añadiendo a `mednafen.cfg`:

```text
sound.driver alsa
sound.device sexyal-literal-default
```

No cambiarlo si SDL ya reproduce correctamente.

## Guías por consola

- [Sega Saturn con Mednafen](emulation_saturn_mednafen.md)
