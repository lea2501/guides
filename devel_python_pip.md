# Upgrade all installed packages:
```
$ pip3 freeze ā local | grep -v ā^\-eā | cut -d = -f 1 | xargs -n1 pip3 install -U --user
```
