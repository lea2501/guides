# Remove all id3 tags from files
```
$ for file in *.flac; do metaflac --remove-all "$file"; done
```
