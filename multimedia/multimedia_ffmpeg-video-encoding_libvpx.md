# Encoding WEBM
## 2pass constant quality
```shell
$ ffmpeg -i input.mkv -c:v libvpx-vp9 -pass 1 -b:v 0 -crf 33 -threads 8 -speed 4 -tile-columns 6 -frame-parallel 1 -an -f webm /dev/null && ffmpeg -i input.mkv -c:v libvpx-vp9 -pass 2 -b:v 0 -crf 33 -threads 8 -speed 2 -tile-columns 6 -frame-parallel 1 -auto-alt-ref 1 -lag-in-frames 25 -c:a libopus -b:a 64k -f webm "`basename input.mkv .mkv`.webm"
```
## 2pass constant quality and resize video to 360p
```shell
$ ffmpeg -i input.mkv -vf scale=640:-1 -c:v libvpx-vp9 -pass 1 -b:v 0 -crf 23 -threads 8 -speed 4 -tile-columns 6 -frame-parallel 1 -an -f webm /dev/null && ffmpeg -i input.mkv -vf scale=640:-1 -c:v libvpx-vp9 -pass 2 -b:v 0 -crf 23 -threads 8 -speed 2 -tile-columns 6 -frame-parallel 1 -auto-alt-ref 1 -lag-in-frames 25 -c:a libopus -b:a 64k -f webm "`basename input.mkv .mkv`.webm"
```

## 2pass best quality (slowest) recommended settings
```shell
$ echo "Y" | ffmpeg -i input.mkv -c:v libvpx-vp9 -pass 1 -b:v 1000K -threads 1 -speed 4 -tile-columns 0 -frame-parallel 0 -g 9999 -aq-mode 0 -an -f webm /dev/null && echo "Y" | ffmpeg -i input.mkv -c:v libvpx-vp9 -pass 2 -b:v 1000K -threads 1 -speed 0 -tile-columns 0 -frame-parallel 0 -auto-alt-ref 1 -lag-in-frames 25 -g 9999 -aq-mode 0 -c:a libopus -b:a 128k -f webm "`basename input.mkv .mkv`.webm"
```

## Recommended
```shell
$ ffmpeg -i input.avi -vf scale=640:-1 -c:v libvpx-vp9 -b:v 0 -crf 31 -c:a libopus -b:a 64k -f webm "`basename input.mkv .mkv`.webm"
```

## Constant Quality Recommended Settings
Objective is to achieve a constant (perceptual) quality level without regard to bitrate.
(Note that Constant Quality differs from Constrained Quality, described below.)
```shell
$ ffmpeg -i input.mkv -c:v libvpx-vp9 -pass 1 -b:v 0 -crf 33 -threads 8 -speed 4 -tile-columns 6 -frame-parallel 1 -an -f webm /dev/null
$ ffmpeg -i input.mkv -c:v libvpx-vp9 -pass 2 -b:v 0 -crf 33 -threads 8 -speed 0 -tile-columns 6 -frame-parallel 1 -auto-alt-ref 1 -lag-in-frames 25 -c:a libopus -b:a 128k -f webm "`basename input.mkv .mkv`.webm"
```

## Constrained Quality Recommended Settings
Objective is to achieve a constant (perceptual) quality level as long as the bitrate achieved is below a specified upper bound. Constrained Quality is useful for bulk encoding large sets of videos in a generally consistent fashion.
```shell
$ echo "Y" | ffmpeg -i input.mkv -c:v libvpx-vp9 -pass 1 -b:v 2000K -crf 23 -threads 8 -speed 4 -tile-columns 6 -frame-parallel 1 -an -f webm /dev/null
$ echo "Y" | ffmpeg -i input.mkv -c:v libvpx-vp9 -pass 2 -b:v 2000K -crf 23 -threads 8 -speed 0 -tile-columns 6 -frame-parallel 1 -auto-alt-ref 1 -lag-in-frames 25 -c:a libopus -b:a 128k -f webm "`basename input.mkv .mkv`.webm"
```

### Constrained Quality 1pass
```shell
$ ffmpeg -i input.mp4 -c:v libvpx-vp9 -crf 30 -b:v 2000k -c:a libopus -b:a 64k -f webm "`basename input.mkv .mkv`.webm"
```
### Constrained Quality 1pass (specified min and max bitrates)
```shell
$ ffmpeg -i input.mp4 -c:v libvpx-vp9 -minrate 500k -b:v 2000k -maxrate 2500k "`basename input.mkv .mkv`.webm"
```

The quality desired is provided as the crf <q-value> parameter and the bitrate upper bound is provided as the b:v <bitrate> parameter, where bitrate MUST be non-zero.
Both crf <q-value> and b:v <bitrate> MUST be provided. In this mode, bitrate control will kick in for difficult videos, where the quality specified cannot be achieved within the given bitrate.
For easy videos, this mode behaves exactly like the constant quality mode, and the actual bitrate achieved can be much lower than the specified bitrate in the b:v parameter.
One caveat in FFMpeg is that if you do not provide the b:v parameter, FFMpeg will assume a default target bitrate of 256K -- so the constrained quality mode will be triggered with a potentially very low target bitrate.
```shell
$ ffmpeg -i input.mkv -c:v libvpx-vp9 -pass 1 -b:v 1400K -crf 23 -threads 8 -speed 4 -tile-columns 6 -frame-parallel 1 -an -f webm /dev/null && ffmpeg -i input.mkv -c:v libvpx-vp9 -pass 2 -b:v 1400K -crf 23 -threads 8 -speed 2 -tile-columns 6 -frame-parallel 1 -auto-alt-ref 1 -lag-in-frames 25 -c:a libopus -b:a 64k -f webm "`basename input.mkv .mkv`.webm"
```
