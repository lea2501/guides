# Multiple files in directory
```shell
$ for FILE in *{.mp4,h264,mkv,avi}; do ffmpeg -i "$FILE" -vf scale=-1:480 -c:v libtheora -minrate 500k -b:v 3000k -maxrate 5500k -c:a libvorbis -b:a 128k "${FILE%.*}"_encode.mkv; done
```
