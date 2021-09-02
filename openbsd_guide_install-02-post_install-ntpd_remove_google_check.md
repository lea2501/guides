# Remove google in ntpd.conf
```
# sed -i '/google/d' /etc/ntpd.conf
# rcctl restart ntpd
```
