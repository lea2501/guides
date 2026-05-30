# Encoding H264

## Diferencia entre h264 y libx264

```text
h264 (codec nativo)     Usa el encoder que venga con el sistema (puede ser hardware
                        o un wrapper básico). Menos opciones de configuración.
                        Rápido pero menos control sobre calidad.

libx264 (x264)          Encoder de software libre, referencia de la industria.
                        Máximo control: CRF, presets, tune, x264opts.
                        Mejor calidad a mismo bitrate. Más lento que hardware.
```

Recomendación: usar siempre `libx264` para compresión de calidad. Usar `h264` solo
para encoding rápido donde no importa optimizar (ej: I-frame only para edición).

## H.264 I-frame only Highest Quality Encoding
```shell
$ ffmpeg -i input.mkv -c:v h264 -cqp 1 -intra -coder ac -an -c:a copy "`basename input.mkv .mkv`.mp4"
$ for file in *.mkv; do ffmpeg -i "$file" -c:v h264 -cqp 1 -intra -coder ac -an -c:a copy "`basename "$file" .mkv`.mp4"; done
```

## libx264 - Compresión con calidad optimizada

```shell
# Visualmente transparente (CRF 17, ideal para archivado):
$ ffmpeg -i input.mkv \
  -c:v libx264 \
  -preset medium \
  -crf 17 \
  -tune film \
  -x264opts rc-lookahead=60:aq-strength=1.2:deblock=-1,-1 \
  -c:a copy \
  -movflags +faststart \
  output.mp4

# Buen balance tamaño/calidad (CRF 20):
$ ffmpeg -i input.mkv \
  -c:v libx264 \
  -preset medium \
  -crf 20 \
  -tune film \
  -x264opts rc-lookahead=60:aq-strength=1.2:deblock=-1,-1 \
  -c:a copy \
  -movflags +faststart \
  output.mp4
```
