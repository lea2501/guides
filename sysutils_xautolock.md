# Automaticaly lock X after 10 minutes, place in .xinitrc or ~/.xautostartprograms
```
xautolock -time 10 -locker '/usr/X11R6/bin/xlock' &
```
