# whisper.cpp

Transcripcion local de audio a texto con Whisper. Usa CPU, funciona offline despues de descargar los modelos.

## Instalacion

```bash
~/src/scripts/devuan/update/update_whisper.cpp.sh
```

El script instala/actualiza `whisper.cpp`, compila `whisper-cli`, descarga modelos y crea estos comandos en `~/bin`:

- `whisper-transcribe` -- wrapper simple con modelo por defecto
- `whisper-cpp` -- acceso directo a `whisper-cli`

## Modelos disponibles segun nuestro script

- `tiny` -- multilenguaje, rapido, sirve para espanol
- `tiny.en` -- ingles, rapido
- `base` -- multilenguaje, default, sirve para espanol e ingles
- `base.en` -- ingles, buena relacion velocidad/calidad
- `small` -- multilenguaje, mejor calidad para espanol
- `small.en` -- ingles, mejor calidad

Modelo por defecto:

```bash
cat ~/.config/whisper.cpp/whisper.env
```

Modelos descargados:

```bash
ls ~/.local/share/whisper.cpp/models
```

## Uso rapido

Transcribir en espanol con el modelo default:

```bash
whisper-transcribe audio.mp3 -l es -otxt
```

Transcribir en ingles con el modelo default:

```bash
whisper-transcribe audio.mp3 -l en -otxt
```

Transcribir detectando idioma automaticamente:

```bash
whisper-transcribe audio.mp3 -l auto -otxt
```

Usar modelo `small` para espanol en el mismo comando:

```bash
WHISPER_CPP_DEFAULT_MODEL=small whisper-transcribe audio.mp3 -l es -otxt
```

Usar modelo `base.en` para ingles en el mismo comando:

```bash
WHISPER_CPP_DEFAULT_MODEL=base.en whisper-transcribe audio.mp3 -l en -otxt
```

Usar modelo `small.en` para ingles en el mismo comando:

```bash
WHISPER_CPP_DEFAULT_MODEL=small.en whisper-transcribe audio.mp3 -l en -otxt
```

Generar subtitulos `.srt`:

```bash
WHISPER_CPP_DEFAULT_MODEL=base whisper-transcribe video.mp4 -l es -osrt
```

Generar subtitulos `.vtt`:

```bash
WHISPER_CPP_DEFAULT_MODEL=base whisper-transcribe video.mp4 -l es -ovtt
```

Guardar salida en archivo de texto:

```bash
WHISPER_CPP_DEFAULT_MODEL=small whisper-transcribe audio.mp3 -l es -otxt -of transcripcion
```

Traducir audio a ingles:

```bash
WHISPER_CPP_DEFAULT_MODEL=base whisper-transcribe audio.mp3 -l es -tr -otxt
```

## Comando directo

Usar `whisper-cpp` cuando se quiera indicar el archivo de modelo completo:

```bash
whisper-cpp -m ~/.local/share/whisper.cpp/models/ggml-base.bin -f audio.mp3 -l es -otxt
```

Usar modelo ingles directo:

```bash
whisper-cpp -m ~/.local/share/whisper.cpp/models/ggml-base.en.bin -f audio.mp3 -l en -otxt
```

## Cambiar default permanente

Editar `~/.config/whisper.cpp/whisper.env` y cambiar:

```bash
WHISPER_CPP_DEFAULT_MODEL="base"
```

Por ejemplo:

```bash
WHISPER_CPP_DEFAULT_MODEL="small"
```
