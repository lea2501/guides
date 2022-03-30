# Show game executable files:
```
$ find ~/games/emu/dos/*/{*.exe,*.bat,*.com} ! -name *setup* ! -name *install* ! -name *config* ! -name *sound* ! -name *network* ! -name *set* ! -name *moslo* ! -name *readme* ! -name *dos4gw* ! -name *inst*  -type f | sort
```

# Show specific game executable files:
```
$ find ~/games/emu/dos/*/{*.exe,*.bat,*.com} ! -name *setup* ! -name *install* ! -name *config* ! -name *sound* ! -name *network* ! -name *set* ! -name *moslo* ! -name *readme* ! -name *dos4gw* ! -name *inst*  -type f | sort | grep [GAME]
```

# Run game directly:
```
$ dosbox -conf ~/PATH/TO/CONFIG -c "mount c: ~/PATH/TO/GAMES_DIRECTORY" -c "c:" -c "cd GAME_DIR" -c "GAME_EXECUTABLE"
$ dosbox -conf ~/.config/dosbox/dosbox-staging.conf -c "mount c: ~/games/emu/dos/" -c "c:" -c "cd nfsse" -c "nfs.exe"
```

# Run game with CD:
```
$ dosbox -conf ~/PATH/TO/CONFIG -c "mount c: ~/PATH/TO/GAMES_DIRECTORY" -c "c:" -c "imgmount d: ~/PATH/TO/ISO_FILE -t cdrom -fs iso" -c "cd GAME_DIR" -c "GAME_EXECUTABLE"
```
