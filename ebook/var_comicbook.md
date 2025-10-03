# Extraction
## Extract comic file
```shell
$ unrar x comic.cbr
$ unzip comic.cbz
```

## Remove unwanted files
```shell
$ find . -type f -name '*.db' -exec rm {} +
```

# Compression
## Compress to zip file
```shell
$ zip -r comic.cbz comic_dir/
```

## Compress only images in current dir to zip file
```shell
$ zip comic.cbz *.png *.jpg
```
