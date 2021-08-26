# Playback with visual enhancement options:
```
$ mpv --vo=opengl:scale=spline36:sigmoid-upscaling
$ mpv --vo=opengl:smoothmotion:smoothmotion-threshold=0.0
```

# Shuffle all tracks in dir
```
$ mpv --shuffle *
```

# Don't display audio pictures
```
$ mpv --no-audio-display
```

# Frequently Used keys
```
p - Pause / playback mode
f - Toggle fullscreen
m - Mute / unmute audio
v - Subtitle visibility
s - Take a screenshot
S - Take a screenshot without subtitles
Q - Quit saving current position to watch later
o - Show progress
O - Toggle show progress
T - Toggle video window on top
```

# Navigation
```
PGUP / PGDWN - Next / previous chapter
. / , - Next / previous frame
RIGHT / LEFT - Seek 5 seconds
UP / DOWN - Seek 60 seconds
> playlist-next - skip to next file
< playlist-prev - skip to previous file
```

# Playback
```
ctrl++ - Increase audio delay
ctrl+- - Decrease audio delay
[ / ] - Decrease / increase speed
m - Mute / unmute audio
A - Cycle aspect ratio
1 / 2 - Decrease / increase contrast
3 / 4 - Decrease / increase brightness
5 / 6 - Decrease / increase gamma
7 / 8 - Decrease / increase saturation
9 / 0 - Decrease / increase audio volume
w / e - Zoom out / in
```

# Subtitles
```
v - Show / hide subtitles
j / J - Next / previous subtitle
z / x - Increase / decrease subtitle delay
r / t - Move subtitles up / down
```

# Play youtube video at 1080p quality
```
$ mpv --ytdl-format="bestvideo[ext=mp4][height<=?1080]+bestaudio[ext=m4a]" "[YOUTUBE_URL]"
```
