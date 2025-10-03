# Resources
```text
https://zdoom.org/wiki/Compile_GZDoom_on_Linux#Compiling
https://aur.archlinux.org/cgit/aur.git/tree/PKGBUILD?h=gzdoom-git
```

# Compile
```shell
$ git clone git://github.com/coelckers/gzdoom.git &&
$ mkdir -pv gzdoom/build
$ cd gzdoom
$ git config --local --add remote.origin.fetch +refs/tags/*:refs/tags/*
```

## Get latest tag name
```shell
$ git tag -l | grep -v 9999 | grep -E '^g[0-9]+([.][0-9]+)*$' |
$ sed 's/^g//' | sort -n -t . -k 1,1 -k 2,2 -k 3,3 -k 4,4 |
$ tail -n 1 | sed 's/^/g/'
$ git pull origin <tag_name>
$ git checkout --detach refs/tags/<tag_name>
```

## Compile
```shell
$ cmake -DCMAKE_BUILD_TYPE=Release
$ make
$ doas make install
```
