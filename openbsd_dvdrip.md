# Check permissions for /dev/rcd0c first
```
$ ls -lah /dev/rcd0c
```

# Add user to operator group
```
# usermod -G operator [USERNAME]
```

# Restart session
## Check user groups
```
$ id
```

# Use lsdvd to see disc media tracks
```
$ lsdvd
```

## If ripped disc to iso
```
$ mpv dvd://menu --dvd-device=file.iso
```

## Test disc/track with mpv
```
$ mpv dvd://menu --dvd-device=/dev/rcd0c
$ mpv dvd://<track> --dvd-device=/dev/rcd0c
```

## Dump track with mpv
```
$ mpv --stream-dump=movie.vob dvd://<track> --dvd-device=/dev/rcd0c
```

This preserves the original container/video/audio/subtitles untouched
