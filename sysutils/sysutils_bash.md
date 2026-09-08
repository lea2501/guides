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

# Convert every file with a given extension
```shell
$ for FILE in ./*.avi; do ffmpeg -i "$FILE" "${FILE%.avi}.webm"; done
$ for FILE in ./*.flac; do ffmpeg -i "$FILE" -c:a libopus -b:a 128k "${FILE%.flac}.opus"; done
```

# Rename files to lowercase
```shell
$ for FILE in ./*; do mv -i -- "$FILE" "${FILE,,}"; done
```

# Replace text in filenames
```shell
$ for FILE in ./*old*; do mv -i -- "$FILE" "${FILE//old/new}"; done
```
