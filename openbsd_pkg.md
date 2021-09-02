# Add a mirror to /etc/installurl
```
$ su -l
# echo "https://www.mirrorservice.org/pub/OpenBSD" >> /etc/installurl
```

# Search for a package by name or word in description
```
$ pkg_info -Q <package>
$ pkg_info -Q ebook
$ pkg_info | grep <keyword>
```

# Show package dependencies
```
$ pkg_info -f <package>
$ pkg_info -f lsdvd | grep '^@depend' | cut -f 3 -d :
```

# Install a package
```
# pkg_add <package>
```

# Install a package as dependency
```
# pkg_add -a <package>
```

# Updating all installed packages
(To upgrade use -u, -i for interactive and -v for verbose output)
```
# pkg_add -Uuv
```

# Updating installed package
```
# pkg_add -u <package>
```

# Removing installed packages
```
# pkg_delete <package>
```

# List installed packages by size
```
$ pkg_info -sa | paste - - - - | sort -n -k 5 | awk '{ NF=$NF/1024/1024 ; print }'
$ pkg_info  -a -s | sed '/^$/d' | paste - - | sort -k 5 -n -r | sed 's/^Information for inst://g' | awk '{print $3 "\t\t" $1};' | gnumfmt --to=si
```
