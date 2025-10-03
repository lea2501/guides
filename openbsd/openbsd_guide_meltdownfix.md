# There is a public PoC for meltdown and spectre on OpenBSD:
```text
https://github.com/genua/meltdown
```

# Here's what it looks like with the current meltdown work-around
```text
danka# ./meltdown -qv
CPU has RDTSCP
CPU has TSX
Access time: memory 401, cache 121 -> threshold 261
Using addr 0xffffffff818e4f30 for symbol '_version'.
0000 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ??????????
matched 0% (0 of 10 bytes)
System is not vulnerable to meltdown
0000 53 70 65 63 69 ?? 6c 20 45 78 Speci?l Ex
matched 90% (9 of 10 bytes)
System is vulnerable to spectre
```
