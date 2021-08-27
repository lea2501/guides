# Record all screen running "sleep 5" command and terminate ffmpeg after completion
```
$ (ffmpeg -f x11grab -c:v libx264 -qp 0 -preset ultrafast -capture_cursor 0 -capture_mouse_clicks 0 -y -r 12 -s 1366x768 -i :0.0 ~/out-test.mp4 2>/dev/null &) && sleep 5 && killall ffmpeg
```
