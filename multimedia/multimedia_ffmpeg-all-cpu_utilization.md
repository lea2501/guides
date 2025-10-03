# CPU Utilization
```text
-cpu-used sets how efficient the compression will be. For legacy reasons, the option is also accessible with -speed in ffmpeg.
When the deadline/quality parameter is good or best, values for -cpu-used can be set between 0 and 5. The default is 0. Using 1 or 2 will increase encoding speed at the expense of having some impact on quality and rate control accuracy. 4 or 5 will turn off rate distortion optimization, having even more of an impact on quality. For two-pass encoding, it is recommended to set a higher speed for the first pass (e.g., 4), and a lower one for the second pass (e.g. 1)
cpu-used 0 = good quality
cpu-used 5 = good speed
```
