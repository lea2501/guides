# Linux - Users

## Create user (Debian/Devuan)

```shell
$ sudo useradd -m -g users -s /bin/bash [USERNAME]
$ sudo passwd [USERNAME]
$ sudo usermod -aG wheel [USERNAME]
```

## Logout user session

```shell
$ kill -9 -1
```
