# Download to file
```
$ curl -OL http://www.openss7.org/repos/tarballs/strx25-0.9.2.1.tar.bz2
$ curl --remote-name http://www.openss7.org/repos/tarballs/strx25-0.9.2.1.tar.bz2
```

# Download to specific file
```
$ curl -OL -o taglist.zip http://www.vim.org/scripts/download_script.php?src_id=7701
```

# Downloading Multiple Files Concurrently
```
$ curl -OL [URL 1] [URL 2] [URL 3]
```

# Authenticating
```
$ curl -u user:pass -O ftp://remote_url/file-to-download.zip
```

# Resume downloads
```
$ curl -L -C - -o "myfile.zip" "http://example.com/file.zip"
```

# Rest endpoint call
```
curl -s -H 'X-Host: api.app.com' -H "X-Origin: production" 'https://api.app.com/relevance/search?query=&layout=1.0'
```
