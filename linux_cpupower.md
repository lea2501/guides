# Install cpupower
```
# pacman -S cpupower
```

# Edit /etc/default/cpupower config file
```
# vim /etc/default/cpupower
```

# Start cpupower service
```
# systemctl enable cpupower
# systemctl start cpupower
```

# Check cpu speed
```
$ watch -n.1 "grep \"^[c]pu MHz\" /proc/cpuinfo"
$ watch -n1 "grep \"^[c]pu MHz\" /proc/cpuinfo"
```
