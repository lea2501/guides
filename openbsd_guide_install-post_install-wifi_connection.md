# Wireless connection
## Get wireless working w/ or w/o WPA
Determine wireless interface name (ex. iwm0) with ifconfig:
```
# ifconfig -a
```

# Scan for available networks
```
# ifconfig iwm0 up
# ifconfig iwm0 scan
```

## Establish wireless w/ WPA, substituting own interface name
```
# ifconfig iwm0 nwid network_id wpakey password
# dhclient iwm0
```

## Establish wireless w/o WPA, ex: guest network
```
# ifconfig iwm0 nwid network_id -wpa
# dhclient iwm0
```

## Stop the connection
```
# ifconfig iwm0 down
```

## To bring back interface, type
```
# ifconfig iwm0 up
```

## Make wireless perm
```
# vi /etc/hostname.iwm0
dhcp nwid network_id -wpa # Without WPA
dhcp nwid network_id wpakey password # With WPA
```

## Restart network interfaces
```
# sh /etc/netstart iwm0
or:
$ doas -u root sh /etc/netstart iwm0
```
