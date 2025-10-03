# Show hardware sensors
```shell
$ sysctl -a | grep "hw.sensors"
```
or:
```shell
$ sysctl hw.sensors
```

# Get cpu0 temp
```shell
$ sysctl hw.sensors | grep "cpu0.temp0" | cut -d"=" -f 2 | awk {'print $1'}
```