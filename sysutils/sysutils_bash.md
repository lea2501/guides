# Repeat command N (10) times
```shell
$ for i in $(seq 1 10); do COMMAND; done
```

# Do action on all files in directory
```shell
$ for FILE in *.*; do COMMAND "$FILE"; done
```

# Do action on specific file types in directory
```shell
$ for FILE in *{.mp4,h264,mkv,avi}; do COMMAND "$FILE"; done
```
