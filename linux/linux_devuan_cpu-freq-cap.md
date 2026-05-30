# Devuan - Capar frecuencia del CPU (sin systemd)

Devuan usa sysvinit. Para capar la frecuencia de los cores de manera persistente.

## Método: script en /etc/rc.local

```shell
# Verificar frecuencias disponibles:
$ cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies
# o el rango:
$ cat /sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq
$ cat /sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq

# Ver frecuencia actual:
$ cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq
```

## Aplicar cap persistente a reinicios

Editar `/etc/rc.local` (se ejecuta al boot):

```shell
$ sudo vim /etc/rc.local
```

Agregar antes del `exit 0`:

```shell
# Cap CPU frequency to 1800MHz
for cpu in /sys/devices/system/cpu/cpu*/cpufreq/scaling_max_freq; do
  echo 1800000 > "$cpu"
done
```

## Aplicar manualmente (sin reiniciar)

```shell
$ for cpu in /sys/devices/system/cpu/cpu*/cpufreq/scaling_max_freq; do sudo sh -c "echo 1800000 > $cpu"; done

# Verificar:
$ cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
```

## Restaurar frecuencia original

```shell
$ for cpu in /sys/devices/system/cpu/cpu*/cpufreq/scaling_max_freq; do sudo sh -c "echo 2500000 > $cpu"; done
```

## Alternativa: cpupower

```shell
$ sudo apt install cpupower
$ sudo cpupower frequency-set -u 1800MHz
```

Para persistir con cpupower, agregar el comando a `/etc/rc.local`.
