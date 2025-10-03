# Remove google in ntpd.conf
```shell
# sed -i '/google/d' /etc/ntpd.conf
# rcctl restart ntpd
```
