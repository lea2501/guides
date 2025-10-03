# Wireless connection
## Get wireless working w/ or w/o WPA
Determine wireless interface name (ex. [INTERFACE]) with ifconfig:
```shell
# ifconfig -a
```

# Scan for available networks
```shell
# ifconfig [INTERFACE] up
# ifconfig [INTERFACE] scan
```

## Establish wireless w/ WPA
```shell
# ifconfig [INTERFACE] nwid [ACCESS_POINT_NAME] wpakey [PASSWORD]
# dhclient [INTERFACE]
```

## Establish wireless w/o WPA, ex: guest network
```shell
# ifconfig [INTERFACE] nwid [ACCESS_POINT_NAME] -wpa
# dhclient [INTERFACE]
```

## Stop the connection
```shell
# ifconfig [INTERFACE] down
```

## To bring back interface, type
```shell
# ifconfig [INTERFACE] up
```

## Make wireless perm
```shell
# vi /etc/hostname.[INTERFACE]
join ACCESS_POINT_NAME wpakey PASSWORD
inet autoconf
```

## Restart network interfaces
```shell
# sh /etc/netstart [INTERFACE]
```