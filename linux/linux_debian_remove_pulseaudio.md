# Stop PulseAudio processes
```shell
# killall pulseaudio
```

# Remove all pulseaudio packages
```shell
# apt-get purge pulseaudio pulseaudio-utils gstreamer0.10-pulseaudio libpulse-browse0 paman pavumeter pavucontrol
```

# Backup sound configuration
```shell
# mv /etc/asound.conf /etc/asound.conf.bak
```

# Remove user configuration
```shell
$ rm ~/.pulse-cookie $ rm -r ~/.pulse
```

# Install ALSA packages
```shell
# apt-get install alsa-base alsa-tools alsa-tools-gui alsa-utils alsa-oss alsamixergui libalsaplayer0
```
