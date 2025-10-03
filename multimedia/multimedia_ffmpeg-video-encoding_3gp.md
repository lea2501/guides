# Encode 3GP
```shell
$ ffmpeg -i input.mkv -f 3gp -vcodec h263 -vb 100000 -s 128x96 -r 12 -acodec libopencore_amrnb -ab 12200 -ar 8000 -ac 1 "`basename input.mkv .mkv`.3gp"
$ ffmpeg -i input.mkv -f 3gp -vcodec mpeg4 -b 150000 -s 320x240 -r 18 -acodec libfaac -ab 64000 -ar 24000 -ac 2 "`basename input.mkv .mkv`.3gp"
$ for file in *.flac; do ffmpeg -i "$file" -f 3gp -vcodec h263 -vb 100000 -s 128x96 -r 12 -acodec libopencore_amrnb -ab 12200 -ar 8000 -ac 1 "`basename "$file" .mkv`.3gp"; done
```
