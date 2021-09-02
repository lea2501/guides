# Usage
```
$ doas pkg_add -Vi tor
$ doas rcctl enable tor
$ doas rcctl start tor
```

# tor-browser
$ doas pkg_add -v tor-browser

# chromium
```
$ echo "alias chromeTOR='chrome --force-device-scale-factor=1 --incognito --proxy-server=\"socks://127.0.0.1:9050\"'" > .kshrc
$ chromeTOR
```
