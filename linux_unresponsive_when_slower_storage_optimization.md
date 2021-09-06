While on the topic of storage, you will find some older kernels making your machine become unresponsive when dealing with slower storage, such as USB drives or SD cards. This is how you tweak it:
```
$ sudo tee -a /etc/sysctl.d/99-sysctl.conf <<-EOF
vm.dirty_background_bytes=16777216
vm.dirty_bytes=50331648
EOF
```

If you don't want to reboot right now, you can run this in a Terminal:    
```
sudo sysctl -w vm.swappiness=1
sudo sysctl -w vm.vfs_cache_pressure=50
sudo sysctl -w vm.dirty_background_bytes=16777216 
sudo sysctl -w vm.dirty_bytes=50331648
```

# Add following lines
```
vm.dirty_background_ratio = 5
vm.dirty_ratio = 10
```
into /etc/sysctl.conf

and run
```
sudo sysctl -p
```

# Workaround: as root issue
```
echo $((16*1024*1024)) > /proc/sys/vm/dirty_background_bytes
echo $((48*1024*1024)) > /proc/sys/vm/dirty_bytes
```

I have added it to my /etc/rc.local file in my 64bit machines.

TANSTAAFL; this change can (and probably will) reduce your throughput to these devices --- it's a compromise between latency and speed. To get back to the previous behavior you can
```
echo 0 > /proc/sys/vm/dirty_background_bytes
echo 0 > /proc/sys/vm/dirty_bytes
```
...which are the default values, meaning that the writeback behavior will be controlled by the parameters dirty_ratio and dirty_background_ratio.

Note for the not-so-expert-with-linux people: the files in /proc are pseudofiles --- just communication channels between the kernel and user space. Never use an editor to change or look at them; get instead a shell prompt --- for example, with sudo -i (Ubuntu flavors) or su root and use echo and cat).
