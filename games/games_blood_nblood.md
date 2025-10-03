# Find games:
```shell
$ find ~/PATH/TO/BLOOD_DIR/*.ini ! -name *mapedit* -type f | sort
$ find ~/games/nblood/*/*.ini ! -name *mapedit* -type f | sort
```

# Usage
```shell
$ nblood -game_dir ~/PATH/TO/BLOOD_DIR -ini FILE.ini
$ nblood -game_dir ~/games/nblood/ -ini fo.ini
$ nblood -game_dir /usr/share/games/nblood/ -ini fo.ini
```

# Random map pack:
```shell
$ nblood -game_dir ~/games/nblood/ -ini $(basename $(find ~/games/nblood/*/*.ini ! -name *mapedit* -type f | sort | shuf -n 1))
$ nblood -game_dir /usr/share/games/nblood/ -ini $(basename $(find /usr/share/games/nblood/*/*.ini ! -name *mapedit* -type f | sort | shuf -n 1))
$ nblood -ini fo.ini
$ nblood -ini $(basename $(find ~/.config/nblood/*.ini ! -name *mapedit* -type f | sort | shuf -n 1))
```
