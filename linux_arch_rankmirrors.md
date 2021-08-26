# Usage

## Back up the existing /etc/pacman.d/mirrorlist:
```
# cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.backup
```

## Edit /etc/pacman.d/mirrorlist.backup and uncomment mirrors for testing with rankmirrors.

### Optionally run the following sed line to uncomment every mirror
```
# sed -i 's/^#Server/Server/' /etc/pacman.d/mirrorlist.backup
```

## Finally, rank the mirrors. Operand -n 6 means only output the 6 fastest mirrors
```
# rankmirrors -n 6 /etc/pacman.d/mirrorlist.backup > /etc/pacman.d/mirrorlist
```
