# Wireless connection
## Get wireless working w/ or w/o WPA
Determine wireless interface name (ex. athn0) with ifconfig:
```
# ifconfig -a
```

## Establish wireless w/ WPA, substituting own interface name
```
# ifconfig athn0 nwid network_id wpakey password
# dhclient athn0
```

## Establish wireless w/o WPA, ex: guest network
```
# ifconfig athn0 nwid network_id -wpa
# dhclient athn0
```

## Stop the connection
```
# ifconfig athn0 down
```

## To bring back interface, type
```
# ifconfig athn0 up
```

## Make wireless perm
```
# vi /etc/hostname.athn0
dhcp nwid network_id -wpa # Without WPA
dhcp nwid network_id wpakey password # With WPA
```

## Restart network interfaces
```
# sh /etc/netstart athn0
or:
$ doas -u root sh /etc/netstart athn0
```
