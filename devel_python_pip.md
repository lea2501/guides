# Upgrade all installed packages:
```
$ pip3 freeze — local | grep -v ‘^\-e’ | cut -d = -f 1 | xargs -n1 pip3 install -U --user
```
