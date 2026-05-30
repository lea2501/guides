# lm-sensors - Monitoreo de temperatura y voltaje del hardware

## Instalación

```shell
# Debian/Ubuntu:
$ sudo apt install lm-sensors

# Arch:
$ sudo pacman -S lm_sensors
```

## Detección de sensores

```shell
$ sudo sensors-detect
```

Responder YES a todo para detectar los módulos del kernel necesarios.

## Uso básico

```shell
# Ver todas las lecturas:
$ sensors

# Solo temperaturas del CPU (Intel):
$ sensors | grep -i "core\|package"

# Solo temperaturas del CPU (AMD):
$ sensors | grep -i "tctl\|tdie\|tccd"
```

## Monitoreo continuo

```shell
# Temperatura CPU + RAM cada 2 segundos:
$ watch -n 2 'sensors | grep -i "core\|package\|tctl\|tdie" ; echo "---" ; free -h | head -2'

# Temperatura + frecuencia CPU:
$ watch -n 2 'sensors | grep -i "core\|package\|tctl\|tdie" ; echo "---" ; grep "^cpu MHz" /proc/cpuinfo | head -4'

# Logging a archivo (una lectura por segundo):
$ while true; do echo "$(date +%H:%M:%S) $(sensors | grep 'Package id 0' | grep -oP '\+\S+')"; sleep 1; done | tee /tmp/temp_log.txt
```

## Temperaturas de referencia

```text
Rango           Estado
-----------     ------
< 60°C          Idle / carga baja
60-80°C         Carga normal
80-90°C         Carga alta sostenida (aceptable)
90-100°C        Throttling inminente, reducir carga o frecuencia
100°C+          Tjunction, el CPU se auto-protege reduciendo clock
```
