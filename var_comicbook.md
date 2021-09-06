# Extraction
## Extract comic file
```
$ unrar x comic.cbr
$ unzip comic.cbz
```

## Remove unwanted files
```
$ find . -type f -name '*.db' -exec rm {} +
```

# Compression
## Compress to zip file
```
$ zip -r comic.cbz comic_dir/
```

## Compress only images in current dir to zip file
```
$ zip comic.cbz *.png *.jpg
```
