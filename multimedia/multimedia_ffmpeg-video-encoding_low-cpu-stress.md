# Video Encoding - Low CPU Stress Compression

Guías para comprimir video de manera eficiente minimizando el uso y temperatura del CPU.

## x265 - Máxima compresión (CPU intensivo)

Para cuando se prioriza tamaño mínimo y calidad, aceptando carga alta de CPU.
Ideal para CPUs potentes o cuando el tiempo no importa.

Ejemplo: 4K60fps HEVC → 1080p60 ~5-6GB, solo audio español, sin subtítulos.

```shell
$ ffmpeg -i input.mkv \
  -map 0:v:0 -map 0:a:2 \
  -sn \
  -vf "scale=1920:1080:flags=lanczos,format=yuv420p" \
  -c:v libx265 \
  -preset fast \
  -crf 23 \
  -x265-params "pools=16:frame-threads=4:rc-lookahead=20:bframes=4:ref=3:aq-mode=3:psy-rd=1.5" \
  -c:a copy \
  -movflags +faststart \
  output_1080p60.mp4
```

Notas:
- `preset fast` con i7-11850H@1800MHz → ~0.5x realtime (~6h para peli de 3h)
- `preset fast` con i7-11850H@2500MHz → ~0.7x realtime (~4.5h para peli de 3h)
- `aq-mode=3` mejora distribución perceptual de calidad
- `psy-rd=1.5` preserva detalle visual en contenido cinematográfico
- `lanczos` es el mejor algoritmo de downscale para nitidez

## x264 - Compresión liviana al CPU (recomendado para notebooks)

Para cuando se prioriza bajo uso de CPU y temperatura, aceptando ~20-30% más de tamaño.
Ideal para notebooks con refrigeración limitada o encoding en background.

Ejemplo: 4K60fps → 1080p60 ~7-7.5GB, bajo estrés térmico.

```shell
$ ffmpeg -i input.mkv \
  -map 0:v:0 -map 0:a:2 \
  -sn \
  -vf "scale=1920:1080:flags=lanczos,format=yuv420p" \
  -c:v libx264 \
  -preset veryfast \
  -crf 22 \
  -tune film \
  -x264opts rc-lookahead=60:aq-strength=1.2:deblock=-1,-1 \
  -c:a copy \
  -movflags +faststart \
  output_1080p60.mp4
```

Notas:
- x264 usa ~40-50% menos CPU que x265 para el mismo preset
- `veryfast` es muy liviano, CPU a ~50-60% de uso
- `crf 22` compensa la menor eficiencia de x264 vs x265
- `-tune film` optimiza para contenido cinematográfico sin costo extra de CPU
- Archivo resultante ~20-30% más grande que x265 equivalente
- En Ryzen 7 5700U debería correr a ~1.5-2x realtime

### x264opts - mejoras de calidad sin costo significativo de CPU

```text
rc-lookahead=60    Más frames de anticipación para decidir bitrate. Reduce artifacts
                   en escenas de mucho movimiento (especialmente a 60fps). Costo: más
                   RAM (~200MB extra), CPU casi igual.

aq-strength=1.2    Adaptive Quantization más agresivo. Preserva mejor el detalle en
                   zonas oscuras y gradientes. Default es 1.0. Costo CPU: nulo.

deblock=-1,-1      Reduce el filtro de deblocking. Mantiene más nitidez/detalle fino
                   a costa de mostrar levemente más bordes de bloque (imperceptible a
                   CRF bajo). Costo CPU: nulo.
```

## x264 - Calidad visual máxima (visualmente transparente, CPU liviano)

Para cuando se prioriza calidad de imagen casi lossless, con downscale de 4K a 1080p/720p.
Archivo más grande pero indistinguible del original a ojo.

```shell
# 1080p - visualmente transparente (~10-12GB para peli de 3h a 60fps)
$ ffmpeg -i input.mkv \
  -map 0:v:0 -map 0:a:2 \
  -sn \
  -vf "scale=1920:1080:flags=lanczos,format=yuv420p" \
  -c:v libx264 \
  -preset veryfast \
  -crf 17 \
  -tune film \
  -x264opts rc-lookahead=60:aq-strength=1.2:deblock=-1,-1 \
  -c:a copy \
  -movflags +faststart \
  output_hq_1080p.mp4

# 720p - visualmente transparente (~5-7GB para peli de 3h a 60fps)
$ ffmpeg -i input.mkv \
  -map 0:v:0 -map 0:a:2 \
  -sn \
  -vf "scale=1280:720:flags=lanczos,format=yuv420p" \
  -c:v libx264 \
  -preset veryfast \
  -crf 17 \
  -tune film \
  -x264opts rc-lookahead=60:aq-strength=1.2:deblock=-1,-1 \
  -c:a copy \
  -movflags +faststart \
  output_hq_720p.mp4
```

## Comparación veryfast vs fast en libx264 (fuente 4K60fps → 1080p60)

```text
                    | veryfast              | fast
--------------------|-----------------------|------------------------
Velocidad (1.8GHz) | ~1-1.5x realtime      | ~0.7-1x realtime
Tiempo peli 3h     | ~2-3h                 | ~3-4.5h
Tamaño CRF 17      | ~12GB                 | ~10-11GB (mejor compresión)
Tamaño CRF 22      | ~7.5GB                | ~6.5GB
Calidad visual      | Excelente             | Excelente (marginal mejor)
Carga CPU           | ~50-60%               | ~70-80%
Temperatura aprox   | +10-15°C sobre idle   | +20-25°C sobre idle
```

Diferencia de calidad entre veryfast y fast: prácticamente imperceptible.
La ventaja de fast es ~10-15% mejor compresión (archivo más chico) a costa de más tiempo y calor.

## Equivalencia de CRF entre codecs (misma calidad visual)

```text
Calidad             | libx264 CRF | libx265 CRF | Tamaño relativo
--------------------|-------------|-------------|----------------
Casi lossless       | 15-16       | 18-19       | x265 ~30% menor
Visualmente transp. | 17-18       | 20-21       | x265 ~30% menor
Excelente           | 19-21       | 22-23       | x265 ~30% menor
Buena (priorizar GB)| 22-23       | 25-26       | x265 ~30% menor
```

## Encoding en 2 pasadas (2-pass)

2-pass distribuye mejor el bitrate: usa más bits en escenas complejas y menos en las simples.
Resultado: tamaño más predecible y calidad más uniforme que CRF, a costa de 2x el tiempo.

### x264 - 2 pasadas

```shell
# Pass 1 (análisis, no genera video final):
$ ffmpeg -i input.mkv \
  -map 0:v:0 -map 0:a:2 \
  -sn \
  -vf "scale=1920:1080:flags=lanczos,format=yuv420p" \
  -c:v libx264 \
  -preset medium \
  -b:v 4000k \
  -maxrate 6000k \
  -bufsize 8000k \
  -tune film \
  -x264opts rc-lookahead=60:aq-strength=1.2:deblock=-1,-1 \
  -pass 1 \
  -an -f null /dev/null

# Pass 2 (encoding final):
$ ffmpeg -i input.mkv \
  -map 0:v:0 -map 0:a:2 \
  -sn \
  -vf "scale=1920:1080:flags=lanczos,format=yuv420p" \
  -c:v libx264 \
  -preset medium \
  -b:v 4000k \
  -maxrate 6000k \
  -bufsize 8000k \
  -tune film \
  -x264opts rc-lookahead=60:aq-strength=1.2:deblock=-1,-1 \
  -pass 2 \
  -c:a copy \
  -movflags +faststart \
  output_1080p_2pass.mp4
```

### x265 - 2 pasadas

```shell
# Pass 1:
$ ffmpeg -i input.mkv \
  -map 0:v:0 -map 0:a:2 \
  -sn \
  -vf "scale=1920:1080:flags=lanczos,format=yuv420p" \
  -c:v libx265 \
  -preset fast \
  -b:v 3300k \
  -maxrate 6000k \
  -bufsize 6600k \
  -x265-params "pools=16:frame-threads=4:rc-lookahead=20:bframes=4:ref=3:aq-mode=3:psy-rd=1.5:pass=1:stats=x265_2pass.log" \
  -an -f null /dev/null

# Pass 2:
$ ffmpeg -i input.mkv \
  -map 0:v:0 -map 0:a:2 \
  -sn \
  -vf "scale=1920:1080:flags=lanczos,format=yuv420p" \
  -c:v libx265 \
  -preset fast \
  -b:v 3300k \
  -maxrate 6000k \
  -bufsize 6600k \
  -x265-params "pools=16:frame-threads=4:rc-lookahead=20:bframes=4:ref=3:aq-mode=3:psy-rd=1.5:pass=2:stats=x265_2pass.log" \
  -c:a copy \
  -movflags +faststart \
  output_1080p_2pass.mp4
```

Notas 2-pass:
- `-b:v` es el bitrate promedio objetivo (determina el tamaño final)
- Para ~6GB en peli de 3h: `-b:v 3300k` (x265) o `-b:v 4000k` (x264)
- Para ~8GB en peli de 3h: `-b:v 4500k` (x265) o `-b:v 5500k` (x264)
- El pass 1 es más rápido porque no escribe video real
- Tiempo total ≈ 1.5x el tiempo de un encode CRF (pass 1 es ~50% más rápido que pass 2)
- Borrar archivos de log después: `rm ffmpeg2pass-0.log* x265_2pass.log*`

## Limitar bitrate máximo (opcional, para streaming o dispositivos limitados)

Por defecto con CRF, el encoder usa los bits que necesite para mantener la calidad.
Si necesitás capar el bitrate (ej: streaming, dispositivo con decoder limitado), agregá:

```shell
# Agregar estas líneas al comando CRF para limitar picos de bitrate:
  -maxrate 8000k \
  -bufsize 16000k \
```

IMPORTANTE: maxrate bajo + CRF = artifacts en escenas de acción. El encoder necesita
picos de bitrate para mantener calidad en movimiento rápido. Si capás muy bajo, el
CRF no puede cumplir su objetivo de calidad.

Regla: maxrate debería ser al menos 2x el bitrate promedio esperado.

```text
Resolución/FPS      | Bitrate promedio CRF17 | maxrate mínimo sugerido
--------------------|------------------------|------------------------
720p 24fps          | ~3000-4000k            | 8000k
720p 60fps          | ~5000-7000k            | 14000k
1080p 24fps         | ~5000-7000k            | 14000k
1080p 60fps         | ~8000-14000k           | 20000k+
```

Si no necesitás limitar para streaming, no uses maxrate/bufsize con CRF.

## Encoding sin CRF - bitrate fijo con maxrate (para tamaño predecible)

Cuando importa el tamaño final exacto y no usás CRF:

```shell
# x264 - bitrate fijo ~6GB para peli de 3h:
$ ffmpeg -i input.mkv \
  -map 0:v:0 -map 0:a:2 \
  -sn \
  -vf "scale=1920:1080:flags=lanczos,format=yuv420p" \
  -c:v libx264 \
  -preset medium \
  -b:v 4000k \
  -maxrate 6000k \
  -bufsize 8000k \
  -tune film \
  -x264opts rc-lookahead=60:aq-strength=1.2:deblock=-1,-1 \
  -c:a copy \
  -movflags +faststart \
  output.mp4
```

## Comparación de presets por carga de CPU

```text
Codec/Preset        | Carga CPU | Compresión | Calidad | Velocidad aprox
--------------------|-----------|------------|---------|----------------
libx264 superfast   | Muy baja  | Aceptable  | Buena   | ~3-4x
libx264 veryfast    | Baja      | Buena      | Buena   | ~1.5-2x
libx264 faster      | Baja-Med  | Buena      | Buena+  | ~1.2-1.5x
libx264 medium      | Media     | Muy buena  | Muy buena| ~0.8-1x
libx265 fast        | Alta      | Excelente  | Excelente| ~0.5-0.7x
libx265 medium      | Muy alta  | Excelente  | Excelente| ~0.3-0.5x
```

## Tips para carga sostenida

Capar frecuencia del CPU para evitar throttling térmico (persistente a reinicios):

```shell
# Crear servicio systemd
$ sudo tee /etc/systemd/system/cpu-freq-cap.service > /dev/null << 'EOF'
[Unit]
Description=Cap CPU frequency
After=multi-user.target

[Service]
Type=oneshot
RemainAfterExit=yes
ExecStart=/bin/bash -c 'for cpu in /sys/devices/system/cpu/cpu*/cpufreq/scaling_max_freq; do echo 1800000 > "$cpu"; done'
ExecStop=/bin/bash -c 'for cpu in /sys/devices/system/cpu/cpu*/cpufreq/scaling_max_freq; do echo 2500000 > "$cpu"; done'

[Install]
WantedBy=multi-user.target
EOF

$ sudo systemctl daemon-reload
$ sudo systemctl enable --now cpu-freq-cap.service

# Restaurar frecuencia original:
$ sudo systemctl stop cpu-freq-cap

# Desactivar permanentemente:
$ sudo systemctl disable cpu-freq-cap
```

## Monitoreo durante encoding

```shell
# Progreso del encoding:
$ tail -f /tmp/ffmpeg_encoding.log

# Temperatura CPU y RAM:
$ watch -n 2 'sensors | grep -i "core\|package\|tctl" ; echo "---" ; free -h | head -2'
```
