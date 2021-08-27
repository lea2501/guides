# Encoding Theora and Vorbis
## Variable Bitrate (VBR)
```
$ ffmpeg -i input.mkv -c:v libtheora -qscale:v 7 -c:a libvorbis -qscale:a 6 "`basename input.mkv .mkv`.ogv"
```

-qscale:v – video quality. Range is 0–10, where 10 is highest quality. 5–7 is a good range to try. If you omit -qscale:v (or the alias -q:v) then ffmpeg will use the default -b:v 200k which will most likely provide a poor quality output, and libtheora may drop/skip frames if the bitrate is too low.
-qscale:a – audio quality. Range is 0–10, where 10 is highest quality. 3–6 is a good range to try. Default is -qscale:a 3. 

## Specific bitrate
```
$ ffmpeg -i input.mkv -c:v libtheora -minrate 500k -b:v 2000k -maxrate 3500k -c:a libvorbis -b:a 128k output.ogv
$ for file in *.flac; do ffmpeg -i "$file" -c:v libtheora -qscale:v 7 -c:a libvorbis -qscale:a 6 "`basename "$file" .mkv`.ogv"; done
```
