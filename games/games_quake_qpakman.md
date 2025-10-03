# Compile
## OpenBSD
```shell
$ mkdir -p ~/src
$ cd ~/src
$ git clone https://github.com/bunder/qpakman.git
$ cd qpakman
$ cmake -DCMAKE_BUILD_TYPE=Release
$ make
```

# Usage
```shell
$ qpakman -l "$pakfile" | grep 'maps/' | grep '.bsp' | awk '{ print $5 }'
```

## Get Random map
```shell
$ qpakman -l "$pakfile" | grep 'maps/' | grep '.bsp' | awk '{ print $5 }' | shuf -n 1
```
