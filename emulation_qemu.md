# QEMU as normal user (sometimes needed):
Create /etc/udev/rules.d/10-qemu.rules with this content to avoid QEMU permission errors when running as a normal user:
```
SUBSYSTEM=="vfio", OWNER="root", GROUP="kvm"
```

## Add your user to the kvm group:
```
# gpasswd -a $USER kvm
```

# Create disk images:
```
$ qemu-img create -f raw ~/PATH/TO/DISKIMAGE_RAW 20G
$ qemu-img create -f qcow2 ~/PATH/TO/DISKIMAGE_QCOW2 20G
```

# QEMU settings
```
-full-screen						# full screen
-enable-kvm						# enable kvm virtualization
-cpu host						# forward all CPU features to the guest system
-m 2G							# set memory amount
-soundhw hda						# set audio devices '-soundhw help' to show all available devices
-device intel-hda -device hda-duplex			# set audio device to intel-hda
-device intel-hda -device hda-duplex -device AC97 -device sb16 -device adlib    # complete sound settings
-nic user,model=virtio-net-pci				# enable basic networking (linux)
-netdev user,id=n0 -device rtl8139,netdev=n0		# enable basic networking (windows)
-netdev user,id=mynet0 -device rtl8139,netdev=mynet0	# enable basic networking (macos)
-nic none						# disable networking
-net nic -net user,smb=shared_dir_path                  # create a temporary samba shared directory in the host
-machine q35,accel=kvm
-device intel-iommu
-boot order=<drive letter>
-drive file=<hdd_drive_image>,format=<img_format>
-cdrom <cd_img>
-fda <floppy_disk_image>
-monitor telnet:127.0.0.1:3010,server,nowait,ipv4	# run KVM with enabled monitor management console
```

# Webcam passthrough:
```
lsusb
Bus 003 Device 004: ID 0c45:672e Microdia Integrated_Webcam_HD
```
## Add read/write permissions to /dev/bus/usb/003/004
```
$ sudo chmod 666 /dev/bus/usb/003/004
-usb -device usb-ehci,id=ehci -device usb-host,hostbus=3,hostaddr=4
```

or:

```
-device usb-ehci,id=usb,bus=pci.0,addr=0x4
  Bus 001 Device 007: ID 0c45:6717 Microdia Integrated_Webcam_HD
```

# Start qemu with OS installation disk:
```
$ qemu-system-x86_64 -m 2G -device intel-hda -device hda-duplex -boot order=d -drive file=~/PATH/TO/DISKIMAGE_QCOW2,format=qcow2 -cdrom ~/PATH/TO/ISO_FILE
$ qemu-system-x86_64 -m 2G -device intel-hda -device hda-duplex -boot order=c -drive file=~/PATH/TO/DISKIMAGE_QCOW2,format=qcow2
```
## Intel i5 cpu
```
$ qemu-system-x86_64 -m 2G -device intel-hda -device hda-duplex -enable-kvm -machine q35,accel=kvm -device intel-iommu -cpu host -nic user,model=virtio-net-pci -boot order=d -drive file=~/PATH/TO/DISKIMAGE_QCOW2,format=qcow2 -cdrom ~/PATH/TO/ISO_FILE
$ qemu-system-x86_64 -m 2G -device intel-hda -device hda-duplex -enable-kvm -machine q35,accel=kvm -device intel-iommu -cpu host -nic user,model=virtio-net-pci -boot order=c -drive file=~/PATH/TO/DISKIMAGE_QCOW2,format=qcow2 -net nic -net user,smb=~/PATH/TO/SHARED_DIR
```
## Other cpu
```
$ qemu-system-x86_64 -m 2G -device intel-hda -device hda-duplex -enable-kvm -cpu host -nic user,model=virtio-net-pci -boot order=d -drive file=~/PATH/TO/DISKIMAGE_QCOW2,format=qcow2 -cdrom ~/PATH/TO/ISO_FILE
$ qemu-system-x86_64 -m 2G -device intel-hda -device hda-duplex -enable-kvm -cpu host -nic user,model=virtio-net-pci -boot order=c -drive file=~/PATH/TO/DISKIMAGE_QCOW2,format=qcow2 -net nic -net user,smb=~/PATH/TO/SHARED_DIR
```

# Mount shared dir in guest os (linux):
```
$ sudo pacman -S cifs-utils
$ sudo apt install cifs-utils
$ mkdir $HOME/mount
$ mount -t cifs //10.0.2.4/qemu/ $HOME/mount/
```

# Create iso with needed files to mount:
```
# pacman -S cdrkit
$ mkisofs -r -o file.iso ~/PATH/TO/DIR_OR_FILES
```

# Examples:
## Devuan
```
$ mkdir -p ~/vms/devuan/
$ qemu-img create -f qcow2 ~/vms/devuan/devuan_qcow2 25G
$ qemu-system-x86_64 -m 2G -device intel-hda -device hda-duplex -enable-kvm -machine q35,accel=kvm -device intel-iommu -cpu host -nic user,model=virtio-net-pci -usb -device usb-ehci,id=ehci -device usb-host,hostbus=3,hostaddr=4 -boot order=d -drive file=~/vms/devuan/devuan_qcow2,format=qcow2 -cdrom ~/isos/devuan_chimaera_4.0.0_amd64_desktop.iso
```
## OpenBSD
```
$ mkdir -p ~/vms/openbsd
$ qemu-img create -f qcow2 ~/vms/openbsd/openbsd_qcow2 25G
$ qemu-system-x86_64 -m 2G -device intel-hda -device hda-duplex -enable-kvm -cpu host -nic user,model=virtio-net-pci -boot order=d -drive file=~/vms/openbsd/openbsd_qcow2,format=qcow2 -cdrom ~/PATH/TO/ISO_FILE
$ qemu-system-x86_64 -m 2G -device intel-hda -device hda-duplex -enable-kvm -cpu host -nic user,model=virtio-net-pci -boot order=c -drive file=~/vms/openbsd/openbsd_qcow2,format=qcow2
```
## Win9x
```
$ mkdir -p ~/vms/win/
$ qemu-img create -f qcow2 ~/vms/win/win98_qcow2 25G
$ qemu-system-x86_64 -m 2G -device intel-hda -device hda-duplex -enable-kvm -cpu host -nic user,model=virtio-net-pci -boot order=a -drive file=~/vms/win/win98_qcow2,format=qcow2 -cdrom ~/PATH/TO/ISO_FILE -fda ~/PATH/TO/FLOPPYIMAGE
$ qemu-system-x86_64 -m 2G -device intel-hda -device hda-duplex -enable-kvm -cpu host -nic user,model=virtio-net-pci -boot order=c -drive file=~/vms/win/win98_qcow2,format=qcow2
```

# Get mouse back from qemu/kvm
## If using the SDL frontend of QEMU:
```
You can release focus using the Left_Ctrl+Left_Alt.
```
## If using the GTK frontend of QEMU (default since QEMU 1.5):
```
Press Ctrl+Alt+G
```

# Changing the ISO image in a virtual CDROM drive while KVM-Qemu is running
## -monitor telnet:127.0.0.1:3010,server,nowait,ipv4
```
$ telnet localhost 3010
Trying 127.0.0.1...
Connected to localhost.
Escape character is '^]'.
 
QEMU 0.11.0 monitor - type 'help' for more information
(qemu) help
```

### Changing the ISO image of a virtual CDROM drive is quite easy:
```
First review what the current status of the drives is:
    (qemu) info block
    virtio0: type=hd removable=0 file=/dev/sdb-vol/win7 ro=0 drv=host_device encrypted=0
    ide0-cd0: type=cdrom removable=1 locked=0 file=/shared/win7-eval.iso ro=0 drv=raw encrypted=0
    ide1-cd0: type=cdrom removable=1 locked=0 [not inserted]
``` 

### Then change the mounted ISO image in the CDROM drive on the fly:
```
    (qemu) change ide1-cd0 /shared/win-virtio-drivers.iso
``` 

### Double-check that the changes took effect. KVM-Qemu will not issue an error message in case something went wrong:
```
    (qemu) info block
    virtio0: type=hd removable=0 file=/dev/sdb-vol/win7 ro=0 drv=host_device encrypted=0
    ide0-cd0: type=cdrom removable=1 locked=0 file=/shared/win7-eval.iso ro=0 drv=raw encrypted=0
    ide1-cd0: type=cdrom removable=1 locked=0 file=/shared/win-virtio-drivers.iso ro=1 drv=raw encrypted=0
```
