# Usage
## Get amount of installed packages
```
$ sudo dpkg-query -f '${binary:Package}\n' -W | wc -l
```
