# Compile
```shell
# cd /usr/ports/x11/dwm
# make fetch
# make patch
# edit /usr/ports/pobj/dwm-...
# make install
# make clean
```

# Installation steps
```text
- I copy them to local ports tree
- make extract
- do changes in source
- make build
- make update-patches
- make clean patch
- make package
```

# Download the port sources and patches
```shell
$ make patch
```
## Go to build directory
```shell
$ cd $(make show=WRKDIST)
*modify what you need*
$ cd -
$ make reinstall
```

## next time first do
```shell
$ make clean=all
```

## make a patch with your changes
```shell
$ diff -u
```
