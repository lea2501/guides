# OpenBSD - Power Management

## Display power information

```shell
$ apm
$ apm -l    # battery percent
$ apm -m    # battery minutes remaining
```

---

## CPU frequency control

OpenBSD uses `hw.setperf` (percentage 0-100) to control CPU frequency.

### Check current state

```shell
$ sysctl hw.cpuspeed        # current MHz
$ sysctl hw.setperf         # current percentage (0-100)
```

### Set frequency manually

```shell
# CPU at minimum (same as apm -L):
$ doas sysctl hw.setperf=0

# CPU at ~50%:
$ doas sysctl hw.setperf=50

# CPU at maximum:
$ doas sysctl hw.setperf=100
```

### Persistent across reboots

In `/etc/sysctl.conf`:

```text
hw.setperf=50
```

### Calculate percentage for a target frequency

```text
Example: CPU max 3600MHz, target 1800MHz:
hw.setperf = (1800 / 3600) * 100 = 50
```

---

## install-post: apmd configuration

### Enable apmd in /etc/rc.conf.local

Adaptive mode (scales with load):

```shell
apmd_flags=-A -z 10
```

Low power mode (CPU always at minimum):

```shell
apmd_flags=-L -z 10
```

High performance mode:

```shell
apmd_flags=-H -z 10
```

The `-z 10` flag triggers suspend at 10% battery.

### Enable and start

```shell
# rcctl enable apmd
# rcctl set apmd flags -A -z 10
# rcctl start apmd
```

---

## Auto-shutdown on low battery

Script for /etc/rc.local (runs at end of boot):

```shell
while true; do
    BAT=$(apm -l)
    if [ "$BAT" -le 10 ]; then
        shutdown -hp now
    fi
    sleep 300
done &
```

Note: with `apmd_flags=-A -z 10`, apmd already handles suspend at 10%.
This script is only needed if you want hard shutdown instead of suspend.

---

## Temperature monitoring

```shell
$ sysctl hw.sensors | grep -i temp
```
