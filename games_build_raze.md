# Usage
```
$ raze -width 1920 -height 1080 -fullscreen -game_dir ~/games/duke3d/ -gamegrp ~/games/duke3d/duke3d.grp -file ~/games/duke3d/dukedc.grp
$ raze -width 1920 -height 1080 -fullscreen -game_dir ~/games/shadow_warrior/ -gamegrp ~/games/shadow_warrior/sw.grp -file ~/games/shadow_warrior/td.grp
$ raze -width 1920 -height 1080 -fullscreen -game_dir ~/games/blood/ -gamegrp ~/games/blood/blood.rff -ini fo.ini
```

# Random map pack
```
$ raze -width 1920 -height 1080 -fullscreen -game_dir ~/games/blood/ -gamegrp ~/games/blood/blood.rff -ini $(basename $(find ~/games/blood/*.ini ! -name *mapedit* -type f | sort | shuf -n 1))
```
