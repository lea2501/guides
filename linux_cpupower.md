# Resources
```
https://wiki.archlinux.org/title/CPU_frequency_scaling
```

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

# Usage
```
# cpupower frequency-set -g governor
```

## Governors
```
Governor        Description
--------        -----------
performance     Run the CPU at the maximum frequency.
powersave       Run the CPU at the minimum frequency.
userspace       Run the CPU at user specified frequencies.
ondemand        Scales the frequency dynamically according to current load. Jumps to the highest frequency and then possibly back off as the idle time increases.
conservative    Scales the frequency dynamically according to current load. Scales the frequency more gradually than ondemand.
schedutil       Scheduler-driven CPU frequency selection
```

# Check cpu speed
```
$ watch -n.1 "grep \"^[c]pu MHz\" /proc/cpuinfo"
$ watch -n1 "grep \"^[c]pu MHz\" /proc/cpuinfo"
```
