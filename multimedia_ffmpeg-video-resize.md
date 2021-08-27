# Video scaling and cropping parameters
```
-vf scale=640:-1
-vf scale=640x360
-vf scale=-1:360
-vf crop=1280:720:0:0,scale=640x360:flags=spline
-vf crop=1280:720:0:0,scale=640x360:flags=lanczos
-vf crop=1280:720:0:0,scale=512x288:flags=lanczos
```

# Resolutions (multiple of 16)
```
- SD (4:3 aspect ratio): 320×240, 432×320, 480×360, 544×400, 640×480, 768×576
- HD (16:9 aspect ratio): 432×240, 576×320, 640×360, 720×400, 848×480, 1024×576, 1280×720, 1920×1080
```
## H.264 FRAMESIZES – square pixel (PAR 1:1) examples for best performance
```
- 4:3 DAR (1.33) standard: 320×240, 384×288, 480×360, 576×432, 640×480, 768×576
- 16:9 DAR (1.77) widescreen: 432×240, 512×288, 640×360, 768×432, 854×480, 1024×576, 1280×720, 1920×1080
```
