# OpenBSD - sysctl

## CPU speed

```shell
$ sysctl hw.cpuspeed
```

## Full hardware info

```shell
$ sysctl hw
```

## Memory

```shell
$ sysctl hw | grep mem
```

## Hardware sensors

```shell
$ sysctl hw.sensors
```

### Get CPU temperature

```shell
$ sysctl hw.sensors | grep "cpu0.temp0" | cut -d"=" -f 2 | awk '{print $1}'
```

### Monitor temperature continuously

```shell
$ while true; do sysctl hw.sensors | grep temp; sleep 2; done
```
