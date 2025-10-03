# To make multiple screenshots and place them into a single image file (creating tiles), you can use FFmpeg's tile video filter, like this:
```shell
$ ffmpeg -ss 00:00:10 -i movie.avi -vf 'select=not(mod(n\,1000)),scale=320:240,tile=2x3' out.png
```

That will seek 10 seconds into the movie, select every 1000th frame, scale it to 320x240 pixels and create 2x3 tiles in the output image out.png.
