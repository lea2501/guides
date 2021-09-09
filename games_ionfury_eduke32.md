# compile eduke32 with fury support
https://dukeworld.com/eduke32/synthesis/latest/
```
$ cd src/
$ curl -OL "https://dukeworld.com/eduke32/synthesis/latest/eduke32_src_20210824-9582-072bd40eb.tar.xz"
$ tar -xxvf eduke32_src_20210824-9582-072bd40eb.tar.xz
$ cd eduke32_20210824-9582-072bd40eb/
$ make FURY=1
```

# Usage
```
$ ~/src/eduke32_20210824-9582-072bd40eb/fury -grp fury.grp -game_dir ~/games/ionfury/
```
