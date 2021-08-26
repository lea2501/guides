# Fix package pulseaudio startup
```
https://bugs.devuan.org/cgi/bugreport.cgi?bug=276]
As root, comment out autospawn=no in your /etc/pulse/client.conf.d/00-disable-autospawn.conf file.
```

# Your /etc/pulse/client.conf.d/00-disable-autospawn.conf file should now look like the below.
```
# On linux systems, disable autospawn by default
# If you are not using systemd, comment out this line
# autospawn=no
```

# No PulseAudio installation
When installing multimedia software pulseaudio can be pulled in as a dependency or as a recommends. This can be blocked by using APT pinning. Place a file in /etc/apt/preferences.d containing the following: -
```
Package: pulseaudio
Pin: release n=beowulf
Pin-Priority: -10
```
Or for any release:
```
Package: pulseaudio
Pin: release o=Devuan
Pin-Priority: -10
```

Any software you do not want installed can be blocked in a similar way.
