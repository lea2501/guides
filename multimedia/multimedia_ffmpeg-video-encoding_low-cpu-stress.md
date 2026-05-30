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
  -maxrate 5000k \
  -bufsize 10000k \
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
  -maxrate 5500k \
  -bufsize 11000k \
  -tune film \
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
