# List input tracks
```
$ ffmpeg -i [INPUT_FILE]
```

# Check tracks output
```
Input #0, mpeg, from '[INPUT_FILE]':
  Duration: 00:03:16.2, start: 620.890956, bitrate: 7704 kb/s
  Stream #0.0[0x1e0]: Video: mpeg2video, yuv420p, 720x576, 6799 kb/s, 25.00 fps(r)
  Stream #0.1[0x89]: Audio: dts, 48000 Hz, stereo, 768 kb/s
  Stream #0.2[0x80]: Audio: ac3, 48000 Hz, 5:1, 384 kb/s
  Stream #0.3[0x83]: Audio: ac3, 48000 Hz, stereo, 96 kb/s
  Stream #0.4[0x82]: Audio: ac3, 48000 Hz, stereo, 96 kb/s
  Stream #0.5[0x84]: Audio: ac3, 48000 Hz, stereo, 192 kb/s
  ...
```

# Encode all tracks
```
$ ffmpeg -i [INPUT_FILE] -map 0:0 -map 0:5 -c:v mpeg4 -b 1000k -s 640x360 -c:a mp3 -ar 22050 -ab 64k -ac 1 -f avi [OUTPUT_FILE]
```

# Encode specific tracks
```
$ ffmpeg -i [INPUT_FILE] -map 0:0 -map 0:1 -map 0:4 -map 0:7 -map 0:8 -map 0:9 -map 0:10 -map 0:11 -map 0:12 -vf scale=640:-1 -c:v libvpx-vp9 -b:v 0 -crf 23 -c:a libopus -b:a 64k -f [OUTPUT_FILE]
```

# Multiple stream codecs
```
-c:v:0 copy -c:a:0 copy -codec:s:0 copy -codec:s:1 copy
```

# Bluray remux
```
$ ffmpeg -i [INPUT_FILE] -map 0:0 -c:v copy -map 0:1 -c:a copy -map 0:9 -c:a copy -map 0:23 -c:s copy [OUTPUT_FILE]
```
