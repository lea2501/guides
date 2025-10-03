# Encoding MP3
## VBR encoding
```shell
$ ffmpeg -i input.flac -codec:a libmp3lame -q:a 2 "`basename input.flac .flac`.mp3"
```

## CBR encoding
```shell
$ ffmpeg -i input.flac -codec:a libmp3lame -b:a 256k "`basename input.flac .flac`.mp3"
```

## All files in dir
```shell
$ find -name "*.flac" -exec ffmpeg -i {} -acodec libmp3lame -qscale:a 2 {}.mp3 \;
$ for file in *.flac; do ffmpeg -i "$file" -codec:a libmp3lame -q:a 2 "`basename "$file" .flac`.mp3"; done
```
