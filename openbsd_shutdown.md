# Enable powerdown
```
# sysctl hw.allowpowerdown=1
```

# Enable permanently in /etc/sysctl.conf
```
# vim /etc/sysctl.conf
hw.allowpowerdown=1
```

# Shutdown and power off
```
# shutdown -hp now
```
