# Disable suspend

## Edit /etc/systemd/logind.conf and make sure you have,
```text
HandleLidSwitch=ignore
```

## Restart systemd-logind
```shell
# systemctl restart systemd-logind
```

