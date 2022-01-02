# noatime in fstab
```
# cp /etc/fstab /etc/fstab.bak
# sed -ie 's/rw/rw,softdep,noatime/g' /etc/fstab
```

# Add "wxallowed" to partitions where you will compile code
