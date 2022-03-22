# Usage

# To show available wifi networks
```
$ nmcli device wifi
```

# To connect to a wifi network
```
$ nmcli dev wifi connect <BSSID or SSID> password <PASSWORD>
```

# To connect to a wifi on the wlan1 wifi interface
```
$ nmcli dev wifi connect <BSSID or SSID> password <PASSWORD> iface wlan1 [profile name]
```

# To disconnect an interface
```
$ nmcli dev disconnect iface eth0
```

# To reconnect an interface marked as disconnected
```
$ nmcli con up uuid <uuid>
```

# To get a list of UUIDs
```
$ nmcli con show
```

# To see a list of network devices and their state
```
$ nmcli dev
```

# To turn off wifi
```
$ nmcli r wifi off
```
