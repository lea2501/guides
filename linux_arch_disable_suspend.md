# Disable suspend

## Edit /etc/systemd/logind.conf and make sure you have,
```
HandleLidSwitch=ignore
```

## Restart systemd-logind
```
# systemctl restart systemd-logind
```

