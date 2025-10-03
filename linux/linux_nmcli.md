# Usage

# To show available wifi networks
```shell
$ nmcli device wifi
```

# To connect to a wifi network
```shell
$ nmcli dev wifi connect <BSSID or SSID> password <PASSWORD>
```

# To connect to a wifi on the wlan1 wifi interface
```shell
$ nmcli dev wifi connect <BSSID or SSID> password <PASSWORD> iface wlan1 [profile name]
```

# To disconnect an interface
```shell
$ nmcli dev disconnect iface eth0
```

# To reconnect an interface marked as disconnected
```shell
$ nmcli con up uuid <uuid>
```

# To get a list of UUIDs
```shell
$ nmcli con show
```

# To see a list of network devices and their state
```shell
$ nmcli dev
```

# To turn off wifi
```shell
$ nmcli r wifi off
```
