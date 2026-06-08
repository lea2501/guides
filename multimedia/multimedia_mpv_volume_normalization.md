# mpv - Normalización de volumen

## mpv.conf

```ini
# Normaliza loudness a -16 LUFS (estándar streaming)
af=loudnorm=I=-16

# Permite amplificar más allá del 100%
volume-max=200
```

## Filtros disponibles

```text
loudnorm        Normalización EBU R128. Analiza el audio y ajusta a un target
                de loudness integrado. Mejor opción general, no distorsiona.
                Parámetros: I (integrated loudness), LRA (loudness range),
                TP (true peak).

dynaudnorm      Normalización dinámica frame a frame. Comprime rango dinámico
                agresivamente. Puede sonar raro en música, útil para diálogos
                muy desparejos.

acompressor     Compresor clásico con attack/release/ratio/threshold.
                Para control manual fino sobre el rango dinámico.
```

## Ejemplos de uso en mpv.conf

```ini
# loudnorm estándar (recomendado)
af=loudnorm=I=-16

# loudnorm más agresivo (para audio muy bajo)
af=loudnorm=I=-14:LRA=7:TP=-2

# dynaudnorm (alternativa)
af=dynaudnorm=g=5:f=250:r=0.9

# Compresor manual
af=acompressor=ratio=4:threshold=-20dB:attack=5:release=50
```

## Hotkeys (input.conf)

```ini
# Toggle loudnorm on/off
n cycle-values af "loudnorm=I=-16" ""

# Toggle dynaudnorm on/off
N cycle-values af "dynaudnorm" ""
```

## Keys de volumen por defecto

```text
9 / 0       Bajar / subir volumen (con volume-max=200 puede pasar de 100%)
m           Mute / unmute
```
