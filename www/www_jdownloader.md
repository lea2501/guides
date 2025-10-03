# Usage
```shell
$ java -jar ~/bin/jdownloader/JDownloader.jar
```

# JDownloader -guiless
## Main controlling

The running instance of JD can be controlled using a second terminal window in which pre-defined commands can be entered using the same executable as used to start the application. Eg:
```shell
$ JDownloader -pause
$ JDownloader -continue
$ JDownloader -stop
$ JDownloader -start
$ JDownloader -update
$ JDownloader -speed
$ JDownloader -maxcon <maxNumConn>
$ JDownloader -speed <speed>
$ JDownloader -maxDls <maxDls>
$ JDownloader -addwatch <folderLocation>
$ JDownloader -remwatch <folderLocation>
$ JDownloader -add <link>
$ JDownloader -remove <packageName>
$ JDownloader -order <packageName> <newPosistionInQueue>
$ JDownloader -queueFirst <packageName>
$ JDownloader -queueLast <packageName>
$ JDownloader -force <packageName>
$ JDownloader -quit
```

## Reporting

Other options such as some kind of reporting can also be integrated here. For instance:
```shell
$ JDownloader -status queue
$ JDownloader -status downloads
$ JDownloader -status all
$ JDownloader -status watchfolder
```
