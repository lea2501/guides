# Usage
```shell
$ yamagi-quake2 +set r_customheight 1366 +set r_customwidth 768 +set vid_fullscreen 1 +set vid_renderer gl3 +set basedir ~/games/quake2/ +game baseq2 +gamemap city64 +skill 1 +set cl_showfps 2
$ yamagi-quake2 +set r_customheight 1366 +set r_customwidth 768 +set vid_fullscreen 1 +set vid_renderer gl3 +set basedir ~/games/quake2/ +gamemap MAP.BSP +skill 1 +seta cl_showfps 2
$ yamagi-quake2 -width 1366 -height 768 -fullscreen +set basedir ~/games/quake2/ +game baseq2 +map MAP.BSP +skill 1 +seta com_allowconsole 1
```

```shell
$ cd ~/src/yquake2/release/ && ./quake2 +seta r_customheight 1920 +seta r_customwidth 1080 +seta vid_fullscreen 1 +seta r_mode -1 +set vid_renderer gl1 +set gl1_particle_square 1 +set gl_shadows 1 +set gl1_stencilshadow 1 +set gl_texturemode GL_NEAREST +set vid_restart 1 +set al_driver libopenal.so.4.2 +set ogg_enable 1 -datadir ~/games/quake2/ +game baseq2 +set cl_showfps 2 +seta com_allowconsole 1 && cd -
$ cd ~/src/yquake2/release/ && ./quake2 +seta r_customheight 1920 +seta r_customwidth 1080 +seta vid_fullscreen 1 +seta r_mode -1 +set vid_renderer gl3 +set gl3_particle_square 1 +set gl3_colorlight 1 +set gl_texturemode GL_NEAREST +set vid_restart 1 +set al_driver libopenal.so.4.2 +set ogg_enable 1 -datadir ~/games/quake2/ +game baseq2 +set cl_showfps 2 +seta com_allowconsole 1 && cd -
$ cd ~/src/yquake2/release/ && ./quake2 +seta r_customheight 1920 +seta r_customwidth 1080 +seta vid_fullscreen 1 +seta r_mode -1 +set vid_renderer soft +set sw_colorlight 0 +set vid_restart 1 +set al_driver libopenal.so.4.2 +set ogg_enable 1 -datadir ~/games/quake2/ +game baseq2 +set cl_showfps 2 +seta com_allowconsole 1 && cd -
$ cd ~/src/yquake2/release/ && ./quake2 +seta r_customheight 1920 +seta r_customwidth 1080 +seta vid_fullscreen 1 +seta r_mode -1 +set vid_renderer gl3 +set gl3_particle_square 1 +set gl3_colorlight 1 +set gl_texturemode GL_NEAREST +set vid_restart 1 +set al_driver libopenal.so.4.2 +set ogg_enable 1 -datadir ~/games/quake2/ +game quake225acu +skill 0 +map techbase0 +set cl_showfps 2 +seta com_allowconsole 1 && cd -
```
