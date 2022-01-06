# Resources
```
https://www.openbsd.org/faq/ports/
https://www.openbsd.org/anoncvs.html
```

# Get the ports tree
## stable
```
$ cd /usr
$ cvs -qd anoncvs@anoncvs2.usa.openbsd.org:/cvs checkout -rOPENBSD_7_0 -P ports
```

## -current
```
$ cd /usr
$ cvs -qd anoncvs@anoncvs2.usa.openbsd.org:/cvs checkout -P ports
```

# Update the ports tree
## stable
```
$ cd /usr/ports
$ cvs -q up -Pd -rOPENBSD_7_0
```

## -current
```
$ cd /usr/ports
$ cvs -q up -Pd -A
```
