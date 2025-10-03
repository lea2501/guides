# System daemons

## CPU scaling daemon
```shell
# rcctl enable apmd
# rcctl set apmd flags -A -z 10
# rcctl start apmd
```

## GUI Login manager (optional)
```shell
# rcctl enable xenodm
# rcctl set xenodm flags ""
# rcctl start xenodm
```
