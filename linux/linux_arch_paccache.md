# Arch Linux - Clean the pacman cache automatically

Create `/etc/pacman.d/hooks/remove_old_cache.hook` with the following contents:

```ini
[Trigger]
Operation = Upgrade
Operation = Install
Operation = Remove
Type = Package
Target = *

[Action]
Description = Cleaning pacman cache...
When = PostTransaction
Exec = /usr/bin/paccache -r
```
