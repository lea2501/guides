# Display a list of services and daemons matching argument
```
# rcctl ls all,failed,off,on,started,stopped
```

# Disable daemon (Alias for set service|daemon status off.)
```
# rcctl disable <service> ... | <daemon> ...
```

# Enable daemon (Alias for set service|daemon status on.)
```
# rcctl enable <service> ... | <daemon> ...
```

# Start daemon
```
# rcctl start snmpd
```

# Add run flag to daemon
```
# rcctl set apmd flags -A 
# rcctl set snmpd6 flags -D addr=2001:db8::1234
```

# Stop daemon
```
# rcctl stop snmpd
```
