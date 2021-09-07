# Usage
## Connection
```
$ sftp -P [PORT] [USERNAME]@[IP_ADDR]
```

## Navigating directories
```
sftp> cd [DIR]
sftp> mkdir [DIR]
```

## Transfering files
```
sftp> get remoteFile
sftp> get remoteFile localFile
sftp> get -r someDirectory
sftp> put localFile
sftp> put -r localDirectory
```
