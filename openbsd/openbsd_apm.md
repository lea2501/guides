# Usage

## Display power information:
```shell
$ apm
```

## Display the estimated battery lifetime (in percent)
```shell
$ apm -l
```

## Display the estimated battery lifetime (in minutes)
```shell
$ apm -m
```

## Sets hw.setperf to 0, the CPU runs at lower MHz
```shell
$ apm -L
$ sysctl hw.setperf
hw.setperf=0
$ sysctl hw.cpuspeed
hw.cpuspeed=800
```

## Sets hw.setperf to 100, the CPU runs at maximum Mhz
```shell
$ apm -H
$ sysctl hw.cpuspeed
hw.cpuspeed=2801
```

# Edit settings on boot
## edit /etc/rc.conf.local file
```shell
# vim /etc/rc.conf.local
```
and add apmd config
```shell
apmd_flags=-A -z 10
```

CPU runs at lower MHz
```shell
apmd_flags=-L -z 10
```

CPU runs at maximum Mhz
```shell
apmd_flags=-H -z 10
```
