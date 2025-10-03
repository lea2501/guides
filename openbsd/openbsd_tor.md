# Usage
```shell
$ doas pkg_add -Vi tor
$ doas rcctl enable tor
$ doas rcctl start tor
```

# tor-browser
```shell
$ doas pkg_add -v tor-browser
```

# chromium
```shell
$ echo "alias chromeTOR='chrome --force-device-scale-factor=1 --incognito --proxy-server=\"socks://127.0.0.1:9050\"'" > .kshrc
$ chromeTOR
```

# Bridges
```text
-Telegram bot: @GetBridgesBot
-Get bridges from https://bridges.torproject.org
-Purchase a VPS from any hosting like 1984.is and run your own obfs4 bridge there.
```
