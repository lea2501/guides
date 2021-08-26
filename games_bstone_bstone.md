# Compilation:
```
$ mkdir -p ~/src
$ git clone https://github.com/bibendovsky/bstone.git
$ cd bstone
$ mkdir -p build && cd build
$ cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=~/src/bstone/build/install
$ cmake --build . --target install
```

# Usage:
## Blake Stone: Aliens Of Gold
```
$ ~/src/bstone/build/install/bstone --no_screens --vid_width 1920 --vid_height 1080 --vid_renderer software --vid_texture_upscale_filter xbrz --data_dir ~/PATH/TO/GAME_DIR --aog 
$ ~/src/bstone/build/install/bstone --no_screens --vid_width 1920 --vid_height 1080 --vid_renderer auto_detect --vid_texture_upscale_filter xbrz --data_dir ~/PATH/TO/GAME_DIR --aog 
```
## Blake Stone: Planet Strike
```
$ ~/src/bstone/build/install/bstone --no_screens --vid_width 1920 --vid_height 1080 --vid_renderer software --vid_texture_upscale_filter xbrz --data_dir ~/PATH/TO/GAME_DIR --ps
$ ~/src/bstone/build/install/bstone --no_screens --vid_width 1920 --vid_height 1080 --vid_renderer auto_detect --vid_texture_upscale_filter xbrz --data_dir ~/PATH/TO/GAME_DIR --ps 
```
