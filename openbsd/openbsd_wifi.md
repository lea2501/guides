# OpenBSD - WiFi

## install-pre: Connect to WiFi during installation

### Install firmware from USB (if needed)

Some WiFi chipsets need firmware not included in the installer.
Download it beforehand from http://firmware.openbsd.org/firmware/

```shell
Welcome to the OpenBSD/amd64 X.X installation program.
(I)nstall, (U)pgrade, (A)utoinstall or (S)hell? s
# ifconfig -a
# sysctl hw.disknames
# mkdir -p /mnt
# mount /dev/sdXi /mnt
# fw_update -p /mnt/
```

### Connect to WiFi from installer shell

```shell
# ifconfig [INTERFACE] up
# ifconfig [INTERFACE] scan
# ifconfig [INTERFACE] nwid [SSID] wpakey [PASSWORD]
# dhclient [INTERFACE]
```

Note: `dhclient` is used here because dhcpleased is not running in the installer environment.

### Remap keyboard during install (useful before typing passwords)

```shell
# kbd -l | grep spanish
# kbd es
```

---

## install-post: Persistent WiFi configuration

### Create /etc/hostname.[INTERFACE]

```shell
# vi /etc/hostname.[INTERFACE]
join SSID_1 wpakey PASSWORD_1
join SSID_2 wpakey PASSWORD_2
inet autoconf
```

Using `inet autoconf` activates dhcpleased(8) which handles DHCP automatically.

### Apply without reboot

```shell
# sh /etc/netstart [INTERFACE]
```

---

## Usage: Manual WiFi connection (post-install)

### Scan and connect

```shell
# ifconfig [INTERFACE] up
# ifconfig [INTERFACE] scan
# ifconfig [INTERFACE] nwid [SSID] wpakey [PASSWORD]
# dhclient [INTERFACE]
```

### Connect to open network (no WPA)

```shell
# ifconfig [INTERFACE] nwid [SSID] -wpa
# dhclient [INTERFACE]
```

### Disconnect

```shell
# ifconfig [INTERFACE] down
```

### Forget a network

```shell
# ifconfig [INTERFACE] -nwid
```

### Bring interface back up

```shell
# ifconfig [INTERFACE] up
```

---

## Identify your WiFi interface

```shell
$ ifconfig -a
```

Common interface names: iwn0, athn0, iwm0, iwx0, bwfm0

## Update firmware

```shell
# fw_update
```
