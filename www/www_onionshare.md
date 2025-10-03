# Usage
## Docker
```shell
$ docker pull debian
$ sudo docker run -ti --name=onionshare -v `pwd`:`pwd` -w `pwd` debian
$ apt update
$ apt install onionshare
$ onionshare <file>
```
