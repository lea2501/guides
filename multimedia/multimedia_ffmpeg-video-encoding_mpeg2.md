# Encoding MPEG2
## FFMpeg MPEG2 HQ encoding VBR 8000k
```shell
$ ffmpeg -i input.mkv -c:v mpeg2video -me_method epzs -threads 1 -r 29.97 -g 45 -bf 2 -trellis 2 -cmp 2 -subcmp 2 -s 848x480 -b 8000k -bt 1835k -c:a mp2 -ac 2 -ab 224k -ar 44100 -async 1 -y -f vob "`basename input.mkv .mkv`.mpg"
```

## FFMpeg MPEG2 HQ encoding VBR 2500k
```shell
$ ffmpeg -i input.mkv -c:v mpeg2video -me_method epzs -threads 1 -r 29.97 -g 45 -bf 2 -trellis 2 -cmp 2 -subcmp 2 -s 848x480 -b 2500k -bt 300k -c:a mp2 -ac 2 -ab 224k -ar 44100 -async 1 -y -f vob "`basename input.mkv .mkv`.mpg"
```

## FFMpeg MPEG2 encoding VBR 8000k
```shell
$ ffmpeg -i input.mkv -c:v mpeg2video -pix_fmt yuv420p -me_method epzs -threads 4 -r 29.97 -g 15 -s 848x480 -b 8000k -bt 1835k -c:a mp2 -ac 2 -ab 192k -ar 44100 -async 1 -y -f vob "`basename input.mkv .mkv`.mpg"
```

## FFMpeg MPEG2 encoding VBR 2500k
```shell
$ ffmpeg -i input.mkv -c:v mpeg2video -pix_fmt yuv420p -me_method epzs -threads 4 -r 29.97 -g 15 -s 848x480 -b 2500k -bt 300k -c:a mp2 -ac 2 -ab 192k -ar 44100 -async 1 -y -f vob "`basename input.mkv .mkv`.mpg"
```

## MPEG-2 I-frame only Highest Quality Encoding
```shell
$ ffmpeg -i input.mkv -c:v mpeg2video -pix_fmt yuv422p -qscale 1 -qmin 1 -intra -an -c:a mp2 -ab 192k "`basename input.mkv .mkv`.mpg"
$ ffmpeg -i input.mkv -c:v mpeg2video -qscale 2 -c:a mp2 -ab 192k "`basename input.mkv .mkv`.mpg"
$ ffmpeg -i input.mkv -c:v mpeg2video -pix_fmt yuv420p -me_method epzs -r 29.97 -g 15 -s 704x396 -b 2500k -bt 300k -c:a mp2 -ac 2 -ab 192k -ar 44100 -async 1 -y -f vob "`basename input.mkv .mkv`.mpg"
```

## Multiple files in directory
```shell
$ for file in *.mkv; do ffmpeg -i "$file" -c:v mpeg2video -me_method epzs -threads 1 -r 29.97 -g 45 -bf 2 -trellis 2 -cmp 2 -subcmp 2 -s 848x480 -b 8000k -bt 1835k -c:a mp2 -ac 2 -ab 224k -ar 44100 -async 1 -y -f vob "`basename "$file" .mkv`.mpg"; done
```
