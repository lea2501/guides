# Enable powerdown
```shell
# sysctl hw.allowpowerdown=1
```

# Enable permanently in /etc/sysctl.conf
```shell
# vim /etc/sysctl.conf
hw.allowpowerdown=1
```

# Shutdown and power off
```shell
# shutdown -hp now
```
