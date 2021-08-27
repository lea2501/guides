# Encoding FFV1 Lossless
```
$ ffmpeg -i input.mkv -c:v ffv1 -an "`basename input.mkv .mkv`.mov"
$ for file in *.flac; do ffmpeg -i "$file" -c:v ffv1 -an "`basename "$file" .mkv`.mov"; done
```
