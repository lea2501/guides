# iptables - Allow incoming TCP traffic

Insert a rule at the beginning of the `INPUT` chain:

```shell
# iptables -I INPUT 1 -p tcp --dport <PORT> -j ACCEPT
```

For example, allow SSH traffic:

```shell
# iptables -I INPUT 1 -p tcp --dport 22 -j ACCEPT
```
