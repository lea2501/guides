# Display a list of services and daemons matching argument
```shell
# rcctl ls all,failed,off,on,started,stopped
```

# Disable daemon (Alias for set service|daemon status off.)
```shell
# rcctl disable <service> ... | <daemon> ...
```

# Enable daemon (Alias for set service|daemon status on.)
```shell
# rcctl enable <service> ... | <daemon> ...
```

# Start daemon
```shell
# rcctl start snmpd
```

# Add run flag to daemon
```shell
# rcctl set apmd flags -A 
# rcctl set snmpd6 flags -D addr=2001:db8::1234
```

# Stop daemon
```shell
# rcctl stop snmpd
```
