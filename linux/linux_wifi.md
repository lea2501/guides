# Linux - WiFi

## NetworkManager (nmcli)

### Show available networks

```shell
$ nmcli device wifi
```

### Connect

```shell
$ nmcli dev wifi connect <SSID> password <PASSWORD>
```

### Connect on specific interface

```shell
$ nmcli dev wifi connect <SSID> password <PASSWORD> iface wlan1
```

### Disconnect

```shell
$ nmcli dev disconnect iface eth0
```

### Reconnect by UUID

```shell
$ nmcli con show
$ nmcli con up uuid <uuid>
```

### Show device states

```shell
$ nmcli dev
```

### Turn off WiFi

```shell
$ nmcli r wifi off
```

---

## wpa_supplicant (without NetworkManager)

```shell
# iwconfig
# wpa_passphrase "ESSID" PASSWORD > /etc/wpa_supplicant.conf
# wpa_supplicant -B -i wlan0 -c /etc/wpa_supplicant.conf
# dhclient wlan0
```
