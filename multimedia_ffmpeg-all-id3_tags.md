# Remove ID3 tags
```
$ ffmpeg -i original.flac -map 0:a -map_metadata -1 -c copy original.nometadata.flac
```
