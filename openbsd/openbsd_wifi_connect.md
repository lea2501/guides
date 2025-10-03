# Connect to wifi
```shell
$ su -l
# ifconfig -a # shows a list of all the interfaces 
# ifconfig [INTERFACE] up
# ifconfig [INTERFACE] scan
# ifconfig [INTERFACE] nwid [ACCESS_POINT_NAME] wpakey [PASSWORD]
# dhclient [INTERFACE] 
DHCPREQUEST on [INTERFACE] to 255.255.255.255 # lots more output
```

# Connect to wifi at installation
The firmware must be downloaded separately.

## Step 1: Download the specific firmware
```text
For OpenBSD 7.3, obtain http://firmware.openbsd.org/firmware/7.3/wpi-firmware-3.2p1.tgz and copy it to the root directory of the FAT formatted stick.
```

## Step 2: Install firmware before installation
```text
Welcome to the OpenBSD/amd64 X.X installation program.
(I)nstall, (U)pgrade, (A)utoinstall or (S)hell? s
# ifconfig -a # shows a list of all the interfaces
# sysctl hw.disknames
# mkdir -p /mnt
# mount /dev/sdXi /mnt
# fw_update -p /mnt/wpi-firmware-3.2p1.tgz
```

## Step 3: Connect to wifi
```shell
# ifconfig [INTERFACE] up
# ifconfig [INTERFACE] scan
# ifconfig [INTERFACE] nwid [ACCESS_POINT_NAME] wpakey [PASSWORD]
# dhclient [INTERFACE] 
```

## Step 3: Forget to wifi
```shell
# ifconfig [INTERFACE] -nwid 
```

## Step 4: After installation
```shell
# vi /etc/hostname.[INTERFACE]
join ACCESS_POINT_NAME wpakey PASSWORD
inet autoconf
```

```shell
doas sh /etc/netstart [INTERFACE]
```