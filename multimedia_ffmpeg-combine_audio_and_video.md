# Combine Audio and Video
```
$ ffmpeg -i video.mp4 -i audio.m4a -c:v copy -c:a copy output.mp4
```

# Animated GIF input
```
$ ffmpeg -i video.gif -i audio.m4a -c:v copy -c:a copy output.mp4
```
