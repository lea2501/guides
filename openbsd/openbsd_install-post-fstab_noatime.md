# noatime in fstab
```shell
# cp /etc/fstab /etc/fstab.bak
# sed -ie 's/rw/rw,softdep,noatime/g' /etc/fstab
```

(its not recommended to add softdep for reliable data consistency)

# Add "wxallowed" to partitions where you will compile code
