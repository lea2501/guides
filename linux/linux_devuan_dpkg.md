# Usage
## Get amount of installed packages
```shell
$ sudo dpkg-query -f '${binary:Package}\n' -W | wc -l
```
