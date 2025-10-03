# Installation
```shell
$ cd ~/games
$ mkdir -p quakeinjector
$ cd ~/quakeinjector || return
$ mkdir -p bin
$ mkdir -p downloads
$ cd ~/games/quakeinjector/bin || return
$ curl -O -L $(curl -s https://api.github.com/repos/hrehfeld/QuakeInjector/releases/latest | jq -r ".assets[] | select(.name | test(\"quakeinjector\")) | .browser_download_url")
$ unzip quakeinjector*.zip
$ cd
```

# Usage (requires java jre 15+)
```shell
$ java -jar ~/games/quakeinjector/bin/quakeinjector.jar
```
