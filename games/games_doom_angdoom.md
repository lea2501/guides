# Resources
```text
https://github.com/dashodanger/angdoom
https://www.doomworld.com/forum/topic/129372-angdoom-an-angband-style-doom-random-map-generator/
```

# Compile
## Compile angdoom
```shell
$ cd ~/src/ && git clone https://github.com/dashodanger/angdoom.git
$ cd angdoom/
$ cmake .
$ make
```

## Compile bsp
```shell
$ mkdir -p ~/src/bsp && cd ~/src/bsp && curl -O http://games.moria.org.uk/doom/bsp/download/bsp-5.2.tar.bz2 && tar -xjvf bsp-5.2.tar.bz2 && cd bsp-5.2
$ ./configure && make
```

# Usage
```shell
$ cd ~/games/doom/maps/angdoom/ && ~/src/angdoom/angdoom && cd -
$ cd ~/games/doom/maps/angdoom/ && ~/src/angdoom/angdoom && mv output.wad output_$(date +%s).wad && cd -
$ ~/src/bsp/bsp-5.2/bsp ~/games/doom/maps/angdoom/output.wad ~/games/doom/maps/angdoom/output_bsp.wad
```
