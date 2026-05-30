# OpenBSD - Capar frecuencia del CPU

OpenBSD usa `hw.setperf` (porcentaje 0-100) para controlar la frecuencia del CPU.
No permite frecuencias exactas como Linux, sino un porcentaje del máximo.

## Ver estado actual

```shell
$ sysctl hw.cpuspeed        # frecuencia actual en MHz
$ sysctl hw.setperf         # porcentaje actual (0-100)
```

## Capar frecuencia manualmente

```shell
# CPU al mínimo (equivale a apm -L):
$ sysctl hw.setperf=0

# CPU a ~50% de la frecuencia máxima:
$ sysctl hw.setperf=50

# CPU al máximo:
$ sysctl hw.setperf=100

# Verificar a cuánto quedó:
$ sysctl hw.cpuspeed
```

## Persistente a reinicios

Editar `/etc/sysctl.conf`:

```shell
$ doas vim /etc/sysctl.conf
```

Agregar:

```text
hw.setperf=50
```

## Alternativa: apmd con flag -L (bajo consumo)

En `/etc/rc.conf.local`:

```shell
apmd_flags=-L -z 10
```

Esto fuerza el CPU al mínimo permanentemente. Para modo adaptativo (sube/baja según carga):

```shell
apmd_flags=-A -z 10
```

## Calcular porcentaje para una frecuencia deseada

```text
Ejemplo: CPU max 3600MHz, querés caparlo a 1800MHz:
hw.setperf = (1800 / 3600) * 100 = 50
```

## Monitoreo de temperatura

```shell
$ sysctl hw.sensors | grep -i temp
# o con watch:
$ while true; do sysctl hw.sensors | grep temp; sleep 2; done
```
