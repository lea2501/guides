# Enable hyperthreading (temporarily)
```shell
# sysctl hw.smt=1
```

# Disable hyperthreading (temporarily)
```shell
# sysctl hw.smt=0
```

# Enable hyperthreading (permanently)
```shell
# echo "hw.smt=1" >> /etc/sysctl.conf
```

# Disable hyperthreading (permanently)
```shell
# echo "hw.smt=0" >> /etc/sysctl.conf
```
