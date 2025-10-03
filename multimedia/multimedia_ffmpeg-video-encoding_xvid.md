# Encoding MPEG2
## FFMpeg XVID encoding VBR (1 = best, 31 = worse)
```shell
$ ffmpeg -i INPUT_FILE -c:v libxvid -q:v 5 -q:a 5 OUTPUT_FILE.avi
```

## FFMpeg MPEG4 vtag xvid
```shell
$ ffmpeg -i input.avi -c:v mpeg4 -vtag xvid output.avi
```

## FFMpeg XVID DiVX encoding CBR 1500k
```shell
$ ffmpeg -i input.mkv -sn -c:a libmp3lame -ar 48000 -ab 128k -ac 2 -c:v libxvid -crf 24 -vtag DIVX -vf scale=640:480 -aspect 4:3 -mbd rd -flags +mv4+aic -trellis 2 -cmp 2 -subcmp 2 -g 30 -vb 1500k output.avi
```

## Multiple files in directory
```shell
$ for file in *.mkv; do ffmpeg -i "$file" -c:v mpeg2video -me_method epzs -threads 1 -r 29.97 -g 45 -bf 2 -trellis 2 -cmp 2 -subcmp 2 -s 848x480 -b 8000k -bt 1835k -c:a mp2 -ac 2 -ab 224k -ar 44100 -async 1 -y -f vob "`basename "$file" .mkv`.mpg"; done
```
