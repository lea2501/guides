# Usage
```shell
$ sox track_01.wav track_01.flac
```

## All files in directory
```shell
$ for file in *.wav; do sox "$file" "`basename "$file" .wav`.flac"; done
```
