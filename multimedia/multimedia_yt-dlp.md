# Usage

## Download in 720p resolution
```shell
yt-dlp -S res:720 "[YOUTUBE_URL]"
```

## Download all the videos in a youtube playlist:
```shell
youtube-dl -citk http://www.youtube.com/playlist?list=XXXXXXXXXXX
```

### parameters
```text
-c: resume partially downloaded video files
-i: continue upon download errors
-t: use video title as the file name
-f: format 
```

# Set quality
```shell
youtube-dl -citk -f mp4 http://www.youtube.com/playlist?list=XXXXXXXXXXX
```

# Audio only
```text
youtube-dl -F [YOUTUBE_URL]"
format code extension resolution  note 
171         webm      audio only  DASH webm audio , audio@ 48k (worst)
140         m4a       audio only  DASH audio , audio@128k
160         mp4       192p        DASH video 
133         mp4       240p        DASH video 
134         mp4       360p        DASH video 
135         mp4       480p        DASH video 
17          3gp       176x144     
36          3gp       320x240     
5           flv       400x240     
43          webm      640x360     
18          mp4       640x360     (best)
```

```shell
youtube-dl -f 140 http://www.youtube.com/watch?v=HRIF4_WzU1w
```

# Download with external program
```shell
youtube-dl --external-downloader aria2c --external-downloader-args "-j 8 -s 8 -x 8 -k 5M" "[YOUTUBE_URL]"
```

# Search and get download links
```shell
youtube-dl "gvsearch5:openbsd" --skip-download -e --get-url
```
