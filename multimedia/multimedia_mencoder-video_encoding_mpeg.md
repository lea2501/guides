# Resources
```text
http://www.mplayerhq.hu/DOCS/HTML/es/menc-feat-vcd-dvd.html
```

# Encoding
## PAL DVD
```shell
$ mencoder -oac lavc -ovc lavc -of mpeg -mpegopts format=dvd:tsaf -vf scale=720:576,harddup -srate 48000 -af lavcresample=48000 -lavcopts vcodec=mpeg2video:vrc_buf_size=1835:vrc_maxrate=9800:vbitrate=5000:keyint=15:vstrict=0:acodec=ac3:abitrate=192:aspect=16/9 -ofps 25 -o movie.mpg movie.avi
```

## NTSC DVD
```shell
$ mencoder -oac lavc -ovc lavc -of mpeg -mpegopts format=dvd:tsaf -vf scale=720:480,harddup -srate 48000 -af lavcresample=48000 -lavcopts vcodec=mpeg2video:vrc_buf_size=1835:vrc_maxrate=9800:vbitrate=5000:keyint=18:vstrict=0:acodec=ac3:abitrate=192:aspect=16/9 -ofps 30000/1001 -o movie.mpg movie.avi
```

## PAL AVI Containing AC-3 Audio to DVD
If the source already has AC-3 audio, use -oac copy instead of re-encoding it.
```shell
$ mencoder -oac copy -ovc lavc -of mpeg -mpegopts format=dvd:tsaf -vf scale=720:576,harddup -ofps 25 -lavcopts vcodec=mpeg2video:vrc_buf_size=1835:vrc_maxrate=9800:vbitrate=5000:keyint=15:vstrict=0:aspect=16/9 -o movie.mpg movie.avi
```

## NTSC AVI Containing AC-3 Audio to DVD
If the source already has AC-3 audio, and is NTSC @ 24000/1001 fps
```shell
$ mencoder -oac copy -ovc lavc -of mpeg -mpegopts format=dvd:tsaf:telecine -vf scale=720:480,harddup -lavcopts vcodec=mpeg2video:vrc_buf_size=1835:vrc_maxrate=9800:vbitrate=5000:keyint=15:vstrict=0:aspect=16/9 -ofps 24000/1001 -o movie.mpg movie.avi
```

## PAL SVCD
```shell
$ mencoder -oac lavc -ovc lavc -of mpeg -mpegopts format=xsvcd -vf scale=480:576,harddup -srate 44100 -af lavcresample=44100 -lavcopts vcodec=mpeg2video:mbd=2:keyint=15:vrc_buf_size=917:vrc_minrate=600:vbitrate=2500:vrc_maxrate=2500:acodec=mp2:abitrate=224:aspect=16/9 -ofps 25 -o movie.mpg movie.avi
```

## NTSC SVCD
```shell
$ mencoder -oac lavc -ovc lavc -of mpeg -mpegopts format=xsvcd  -vf scale=480:480,harddup -srate 44100 -af lavcresample=44100 -lavcopts vcodec=mpeg2video:mbd=2:keyint=18:vrc_buf_size=917:vrc_minrate=600:vbitrate=2500:vrc_maxrate=2500:acodec=mp2:abitrate=224:aspect=16/9 -ofps 30000/1001 -o movie.mpg movie.avi
```

## PAL VCD
```shell
$ mencoder -oac lavc -ovc lavc -of mpeg -mpegopts format=xvcd -vf scale=352:288,harddup -srate 44100 -af lavcresample=44100 -lavcopts vcodec=mpeg1video:keyint=15:vrc_buf_size=327:vrc_minrate=1152:vbitrate=1152:vrc_maxrate=1152:acodec=mp2:abitrate=224:aspect=16/9 -ofps 25 -o movie.mpg movie.avi
```

## NTSC VCD
```shell
$ mencoder -oac lavc -ovc lavc -of mpeg -mpegopts format=xvcd -vf scale=352:240,harddup -srate 44100 -af lavcresample=44100 -lavcopts vcodec=mpeg1video:keyint=18:vrc_buf_size=327:vrc_minrate=1152:vbitrate=1152:vrc_maxrate=1152:acodec=mp2:abitrate=224:aspect=16/9 -ofps 30000/1001 -o movie.mpg movie.avi
```
