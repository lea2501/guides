# Resumable downloads
```
$ wget -d -c --tries=0 --read-timeout=30 -O "myfile.zip" "http://example.com/file.zip"
```

# Download all images in imageboard threads
```
$ wget -P pictures -nd -r -l 1 -H -D i.4cdn.org -A png,gif,jpg,jpeg,webm THREAD_URL
$ wget -P pictures -nd -r -l 1 -H -D media.8ch.net -A png,gif,jpg,jpeg,webm THREAD_URL
```

# Download mirror of entire site
```
$ wget --mirror --convert-links --adjust-extension --page-requisites --no-parent --random-wait --no-check-certificate --no-verbose -e robots=off "https://www.site.com/"
```
