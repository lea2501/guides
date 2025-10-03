# Combine Audio and Video
```shell
$ ffmpeg -i video.mp4 -i audio.m4a -c:v copy -c:a copy output.mp4
```

# Animated GIF input
```shell
$ ffmpeg -i video.gif -i audio.m4a -c:v copy -c:a copy output.mp4
```
