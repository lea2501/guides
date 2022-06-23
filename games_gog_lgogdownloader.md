# Resources
```
https://github.com/Sude-/lgogdownloader
```

# Installation (Source)
```
$ mkdir ~/src/ && cd ~/src
$ curl -OL "$(curl -s https://api.github.com/repos/Sude-/lgogdownloader/releases/latest | jq -r ".assets[] | select(.name | test(\"tar.gz\")) | .browser_download_url" | head -n 1)"
$ tar -xvzf lgogdownloader-*.tar.gz
$ cd lgogdownloader-*
$ mkdir build
$ cd build
$ cmake .. -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Release -DUSE_QT_GUI=ON
$ make
$ sudo make install
```

# Debian/Ubuntu/Windows(Linux Subsystem)
```
1. Just use enable windows subsystem for linux. Install Ubuntu distro.
2 Open terminal:
    $ sudo apt-get update
    $ sudo apt-get install lgogdownloader
    $ cd /mnt/<c or d drive>
```

# Usage
```
$ cd <directory to store files>
$ lgogdownloader --login
(enter account credentials)
$ lgogdownloader --list
$ lgogdownloader --list-details --game <title>
$ lgogdownloader --download
(or)
$ lgogdownloader --download --threads 6 --platform linux --exclude extras  --game <title>
```

# Repairing files
```
$ lgogdownloader --repair --game beneath_a_steel_sky
$ lgogdownloader --repair --download --game "^a"
```

# Configuration
```
$ vim .config/lgogdownloader/config
```
