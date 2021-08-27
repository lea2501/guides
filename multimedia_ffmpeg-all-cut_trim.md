# Cut content
```
$ ffmpeg -i [input_file] -ss [start_seconds] -t [duration_seconds] [output_file]
```

# Use FFmpeg cut mp4 video without re-encoding
```
$ ffmpeg -i source.mp4 -ss 00:00:05 -t 00:00:10 -c copy cut_video.mp4
$ ffmpeg -i source.mp4 -ss 00:00:05 -to 00:00:10 -c copy cut_video.mp4
```

# Use FFmpeg cut mp4 video with re-encoding
```
$ ffmpeg -i source.mp4 -ss 00:00:05 -t 00:00:10 -async 1 -strict -2 cut_video.mp4
```

# Time based from - to
```
$ ffmpeg -i source.mp4 -ss 00:00:05 -to 00:00:10 -async 1 -strict -2 cut_video.mp4
```
