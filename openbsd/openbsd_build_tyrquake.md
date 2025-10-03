# Compile
```shell
Dont work:
$ gmake USE_SDL=Y TARGET_OS=UNIX
$ gmake VID_TARGET=sdl SND_TARGET=sdl IN_TARGET=sql CD_TARGET=bsd
$ gmake TARGET_OS=UNIX TARGET_UNIX=openbsd
```

# Clone latest git repository and compile with
```shell
$ gmake TARGET_OS=UNIX TARGET_UNIX=openbsd
```
