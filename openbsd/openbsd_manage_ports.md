# Resources
```text
https://www.openbsd.org/faq/ports/
https://www.openbsd.org/anoncvs.html
```

# Get the ports tree
## stable
```shell
$ cd /usr
$ cvs -qd anoncvs@anoncvs.ca.openbsd.org:/cvs checkout -rOPENBSD_7_3 -P src
```

## -current
```shell
$ cd /usr
$ cvs -qd anoncvs@anoncvs.ca.openbsd.org:/cvs checkout -P src
```

# Update the ports tree
## stable
```shell
$ cd /usr/ports
$ cvs -q up -Pd -rOPENBSD_7_3
```

## -current
```shell
$ cd /usr/ports
$ cvs -q up -Pd -A
```
