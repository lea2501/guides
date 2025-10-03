# Download files
```shell
$ aria2c http://cdimage.debian.org/debian-cd/6.0.7/amd64/iso-cd/debian-6.0.7-amd64-netinst.iso
```

# Raise the number of connections per server
```shell
$ aria2c -x 2 http://cdimage.debian.org/debian-cd/6.0.7/amd64/iso-cd/debian-6.0.7-amd64-netinst.iso
```

# Download the same file from more sources
```shell
aria2c http://cdimage.debian.org/debian-cd/6.0.7/amd64/iso-cd/debian-6.0.7-amd64-netinst.iso ftp://cdimage.debian.org/debian-cd/6.0.7/amd64/iso-cd/debian-6.0.7-amd64-netinst.iso
```

# Torrent download
## Download from torrent file in disk
```shell
$ aria2c debian-6.0.7-amd64-businesscard.iso.torrent
```

## Download from torrent file url
```shell
$ aria2c http://cdimage.debian.org/debian-cd/6.0.7/amd64/bt-cd/debian-6.0.7-amd64-businesscard.iso.torrent
```

## Download torrent file to memory and discard after download is complete
```shell
$ aria2c --follow-torrent=mem http://cdimage.debian.org/debian-cd/6.0.7/amd64/bt-cd/debian-6.0.7-amd64-businesscard.iso.torrent
```

# Resume downloads
```shell
$ aria2c -c -m 0 -o "myfile.zip" "http://example.com/file.zip"
```
