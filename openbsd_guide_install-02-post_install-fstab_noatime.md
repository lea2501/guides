# noatime in fstab
```
# cp /etc/fstab /etc/fstab.bak
# sed -i 's/rw/rw,noatime/' /etc/fstab
```

# Add "wxallowed" to partitions where you will compile code
