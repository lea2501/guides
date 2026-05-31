# Running a Debian VM with vmm/vmd on OpenBSD

## Prerequisites

Enable and start vmd:

```
# rcctl enable vmd
# rcctl start vmd
```

## Download Debian installer

```
$ mkdir -p ~/vms
$ ftp https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/debian-13.5.0-amd64-netinst.iso
```

## Create a virtual disk

```
$ vmctl create -s 10G ~/vms/debian.qcow2
```

## Install Debian

```
# vmctl start -c -m 1G -d ~/vms/debian.qcow2 -r ~/vms/debian-13.5.0-amd64-netinst.iso debian
```

This opens a serial console. During install:
- Choose "Install" (not graphical)
- When prompted for console, select the serial console (ttyS0)
- Use a minimal install (no desktop, no GUI)
- Install SSH server and standard system utilities

## Configure /etc/vm.conf (persistent VM)

```
vm "debian" {
    memory 1G
    disk ~/vms/debian.qcow2
    local interface
    owner your_user
    allow instance { boot, disk, memory }
}
```

Reload vmd:

```
# rcctl restart vmd
```

## Boot the VM

```
# vmctl start debian
```

Connect to console:

```
$ vmctl console debian
```

Exit console with `~.`

## Networking

The VM gets a local interface. On the OpenBSD host, enable NAT in /etc/pf.conf:

```
match out on egress from 100.64.0.0/10 to any nat-to (egress)
pass in on vether0
```

Reload pf:

```
# pfctl -f /etc/pf.conf
```

Inside the Debian VM, configure DHCP (should work automatically with the default install).

## SSH into the VM

Find the VM IP:

```
$ vmctl show
```

Or from inside the console, run `ip a` to get the address (usually 100.64.x.x).

```
$ ssh user@100.64.x.x
```

## Using the VM for Linux tasks

Once connected via SSH:

```
$ sudo apt update
$ sudo apt install build-essential git
$ git clone https://github.com/user/repo.git
$ cd repo
$ make
```

## Stop the VM

```
# vmctl stop debian
```

## Tips

- Use `-m 2G` if you need more RAM for compilation
- The disk can be resized later with `vmctl create -s 20G` and expanding the filesystem inside
- For file transfer between host and VM, use `scp` or set up a shared directory via NFS/SSHFS
- Add your user to the `_vmd` group to run vmctl without root for non-privileged operations
