# Stop PulseAudio processes
```
# killall pulseaudio
```

# Remove all pulseaudio packages
```
# apt-get purge pulseaudio pulseaudio-utils gstreamer0.10-pulseaudio libpulse-browse0 paman pavumeter pavucontrol
```

# Backup sound configuration
```
# mv /etc/asound.conf /etc/asound.conf.bak
```

# Remove user configuration
```
$ rm ~/.pulse-cookie $ rm -r ~/.pulse
```

# Install ALSA packages
```
# apt-get install alsa-base alsa-tools alsa-tools-gui alsa-utils alsa-oss alsamixergui libalsaplayer0
```
