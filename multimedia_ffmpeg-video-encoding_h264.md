# Encoding H264
## H.264 I-frame only Highest Quality Encoding
```
$ ffmpeg -i input.mkv -c:v h264 -cqp 1 -intra -coder ac -an -c:a copy "`basename input.mkv .mkv`.mp4"
$ for file in *.mkv; do ffmpeg -i "$file" -c:v h264 -cqp 1 -intra -coder ac -an -c:a copy "`basename "$file" .mkv`.mp4"; done
```
