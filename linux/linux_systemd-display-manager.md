# systemd - Manage a display manager

The examples use GDM. Replace `gdm` with the service name of another display
manager when needed.

## Stop, start, and inspect the service

```shell
# systemctl stop gdm
# systemctl status gdm
# systemctl start gdm
```

## Boot to a text console by default

```shell
# systemctl set-default multi-user.target
```

The display manager can still be started manually with `systemctl start gdm`.

## Restore the graphical boot target

```shell
# systemctl set-default graphical.target
```

## Show the current default target

```shell
$ systemctl get-default
```
