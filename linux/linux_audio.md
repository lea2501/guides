# Linux - Audio

## ALSA / amixer

### Volume control

```shell
$ amixer -q sset Master 5%+
$ amixer -q sset Master 5%-
$ amixer -q sset Master toggle
```

---

## Remove PulseAudio (use ALSA only)

```shell
# killall pulseaudio
# apt-get purge pulseaudio pulseaudio-utils
$ rm ~/.pulse-cookie
$ rm -r ~/.pulse
```

### Install ALSA packages

```shell
# apt-get install alsa-base alsa-tools alsa-utils alsa-oss
```

### Backup sound config (if exists)

```shell
# mv /etc/asound.conf /etc/asound.conf.bak
```

---

## Devuan: Fix PulseAudio startup (if keeping it)

Comment out `autospawn=no` in `/etc/pulse/client.conf.d/00-disable-autospawn.conf`:

```text
# autospawn=no
```

### Block PulseAudio installation via APT pinning

In `/etc/apt/preferences.d/no-pulseaudio`:

```text
Package: pulseaudio
Pin: release o=Devuan
Pin-Priority: -10
```
