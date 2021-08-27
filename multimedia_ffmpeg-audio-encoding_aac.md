# Encoding AAC
```
$ ffmpeg -i input.flac -c:a libfdk_aac -b:a 384k "`basename input.flac .flac`.mp4"
$ for file in *.flac; do ffmpeg -i "$file" -c:a libfdk_aac -b:a 384k "`basename "$file" .flac`.mp4"; done
```
