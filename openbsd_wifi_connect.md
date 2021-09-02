# Connect to wifi
```
$ su -l
# ifconfig -a # shows a list of all the interfaces 
# ifconfig athn0 up
# ifconfig athn0 scan
# ifconfig athn0 nwid connection_name wpakey password wpaprotos wpa1,wpa2 
# ifconfig athn0 nwid [CONNECTION_NAME] wpakey [PASSWORD] wpaprotos wpa1,wpa2 
# dhclient athn0 
DHCPREQUEST on athn0 to 255.255.255.255 # lots more output
```

# Connect to wifi at installation
The firmware must be downloaded separately.

## Step 1: Download the specific firmware
```
For OpenBSD 6.9, obtain http://firmware.openbsd.org/firmware/6.9/wpi-firmware-3.2p1.tgz and copy it to the root directory of the FAT formatted stick.
```

## Step 2: Install firmware before installation
```
Welcome to the OpenBSD/amd64 X.X installation program.
(I)nstall, (U)pgrade, (A)utoinstall or (S)hell? s
# ifconfig -a # shows a list of all the interfaces
# sysctl hw.disknames
# mkdir -p /mnt
# mount /dev/sdXi /mnt
# fw_update -p /mnt/wpi-firmware-3.2p1.tgz
```

## Step 3: Connect to wifi
```
# ifconfig [INTERFACE] nwid "my.local.access.point" wpakey "mysekritpassphrase"
# dhclient [INTERFACE] 
```

## Step 4: After installation
```
# vi /etc/hostname.[INTERFACE]
nwid "my.local.access.point" wpakey "mysekritpassphrase"
dhcp
```
