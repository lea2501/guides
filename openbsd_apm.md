# Usage

## Display power information:
```
$ apm
```

## Display the estimated battery lifetime (in percent)
```
$ apm -l
```

## Display the estimated battery lifetime (in minutes)
```
$ apm -m
```

## Sets hw.setperf to 0, the CPU runs at lower MHz
```
$ apm -L
```

## Sets hw.setperf to 100, the CPU runs at maximum Mhz
```
$ apm -H
```

# Edit settings on boot
## edit /etc/rc.conf.local file
```
# vim /etc/rc.conf.local
```
and add apmd config
```
apmd_flags=-A -z 10
```

CPU runs at lower MHz
```
apmd_flags=-L -z 10
```

CPU runs at maximum Mhz
```
apmd_flags=-H -z 10
```
