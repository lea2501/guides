# Record all screen running "sleep 5" command and terminate ffmpeg after completion
```shell
$ (ffmpeg -f x11grab -c:v libx264 -qp 0 -preset ultrafast -capture_cursor 0 -capture_mouse_clicks 0 -y -r 12 -s 1366x768 -i :0.0 ~/out-test.mp4 2>/dev/null &) && sleep 5 && killall ffmpeg
```

# Record all screen and also audio output directly from sound card (not mic)
```shell
$ ffmpeg -f pulse -i $(pactl list sinks | grep $(pactl get-default-sink).monitor | cut -d : -f 2) -ac 2 -acodec pcm_s16le -f x11grab -r 30 -s 1920x1080 -i $DISPLAY -vcodec libx264 -preset ultrafast -threads 0 -y output.mkv
```
