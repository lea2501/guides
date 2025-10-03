# Usage
## Connection
```shell
$ sftp -P [PORT] [USERNAME]@[IP_ADDR]
```

## Navigating directories
```shell
sftp> cd [DIR]
sftp> mkdir [DIR]
```

## Transfering files
```shell
sftp> get remoteFile
sftp> get remoteFile localFile
sftp> get -r someDirectory
sftp> put localFile
sftp> put -r localDirectory
```
