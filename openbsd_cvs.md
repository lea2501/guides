# Checkout the ports tree
```
$ cvs -qd fastly.cdn.openbsd.org:/cvs checkout -rOPENBSD_$(uname -r | tr . _) -P ports
$ cvs -qd anoncvs@anoncvs.ca.openbsd.org:/cvs checkout -rOPENBSD_$(uname -r | tr . _) -P ports
```

# Update the ports tree
```
$ cvs -q up -rOPENBSD_$(uname -r | tr . _) -Pd
```
