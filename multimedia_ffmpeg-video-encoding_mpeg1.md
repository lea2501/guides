# Encoding MPEG1
```
$ ffmpeg -i input.mkv -c:v mpeg1video -c:a mp2 "`basename input.mkv .mkv`.mpg"
$ ffmpeg -i input.mkv -f mpeg1video -b 750000 -s 648x272 -c:a mp2 -ab 128000 "`basename input.mkv .mkv`.mpg"
$ for file in *.mkv; do ffmpeg -i "$file" -f mpeg1video -b 750000 -s 648x272 -c:a mp2 -ab 128000 "`basename "$file" .mkv`.mpg"; done
```
