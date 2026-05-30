# Find games:
```shell
$ find ~/PATH/TO/BLOOD_DIR/*.ini ! -name *mapedit* -type f | sort
$ find ~/games/blood/*/*.ini ! -name *mapedit* -type f | sort
```

# Usage
```shell
$ cd ~/games/blood/base/ && ~/src/NBlood/nblood -ini FRENCHM/frmeat.ini -game_dir FRENCHM
$ cd ~/games/blood/base && ~/src/NBlood/nblood -usecwd -g BLOOD.RFF -j mods/eviction -ini mods/eviction/eviction.ini
```

# Random map pack:
```shell
$ nblood -game_dir ~/games/nblood/ -ini $(basename $(find ~/games/nblood/*/*.ini ! -name *mapedit* -type f | sort | shuf -n 1))
$ nblood -game_dir /usr/share/games/nblood/ -ini $(basename $(find /usr/share/games/nblood/*/*.ini ! -name *mapedit* -type f | sort | shuf -n 1))
$ nblood -ini fo.ini
$ nblood -ini $(basename $(find ~/.config/nblood/*.ini ! -name *mapedit* -type f | sort | shuf -n 1))
```
