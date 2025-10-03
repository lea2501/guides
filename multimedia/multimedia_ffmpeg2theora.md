# Usage
```shell
$ ffmpeg2theora --videobitrate 2000 --two-pass --first-pass firstpass --speedlevel 0 --width 640 --height 360 --resize-method lanczos --noaudio <source> && ffmpeg2theora --videobitrate 2000 --two-pass --second-pass firstpass --speedlevel 0 --width 640 --height 360 --resize-method lanczos --noaudio <source> --output <output.ogv>
```
