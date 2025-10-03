# Resources
```text
https://man.openbsd.org/atactl.8
https://igurublog.wordpress.com/2015/06/10/openbsd-as-a-linux-desktop-replacement/
```

# Disable disk power standby
```shell
$ dmesg
$ sysctl hw.disknames
# disklabel sd2
# atactl sd2 apmset 253  # use 127 to 253 for no standby
```
