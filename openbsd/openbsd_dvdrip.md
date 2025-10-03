# Check permissions for /dev/rcd0c first
```shell
$ ls -lah /dev/rcd0c
```

# Add user to operator group
```shell
# usermod -G operator [USERNAME]
```

# Restart session
## Check user groups
```shell
$ id
```

# Use lsdvd to see disc media tracks
```shell
$ lsdvd
```

## If ripped disc to iso
```shell
$ mpv dvd://menu --dvd-device=file.iso
```

## Test disc/track with mpv
```shell
$ mpv dvd://menu --dvd-device=/dev/rcd0c
$ mpv dvd://<track> --dvd-device=/dev/rcd0c
```

## Dump track with mpv
```shell
$ mpv --stream-dump=movie.vob dvd://<track> --dvd-device=/dev/rcd0c
```

This preserves the original container/video/audio/subtitles untouched
