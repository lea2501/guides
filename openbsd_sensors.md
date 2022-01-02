# Show hardware sensors
```
$ sysctl -a | grep "hw.sensors"
or:
$ sysctl hw.sensors
```

# Get cpu0 temp
```
$ sysctl hw.sensors | grep "cpu0.temp0" | cut -d"=" -f 2 | awk {'print $1'}
```