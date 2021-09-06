# Extract text and image files from epub in current dir
```
$ unzip -j book.epub *.*htm* *.jpg *.png
```

# Use a browser to read text files
```
$ lynx chapter01.html
```

# Read ebook in terminal
```
$ einfo -pp file.epub | w3m -T text/html | less
$ unzip -p file.epub *.xhtml | w3m -T text/html | less
```
