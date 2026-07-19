# Resources

```text
https://github.com/Sude-/lgogdownloader
```

# Installation from source (Devuan/Debian/Ubuntu)

```shell
$ sudo apt-get install --no-install-recommends build-essential git libcurl4-openssl-dev libboost-regex-dev libjsoncpp-dev librhash-dev libtinyxml2-dev libtidy-dev libboost-system-dev libboost-filesystem-dev libboost-program-options-dev libboost-date-time-dev libboost-iostreams-dev cmake pkg-config zlib1g-dev qtwebengine5-dev ninja-build
$ git clone https://github.com/Sude-/lgogdownloader.git ~/src/lgogdownloader
$ cd ~/src/lgogdownloader
$ cmake -S . -B build -DCMAKE_INSTALL_PREFIX=/usr/local -DCMAKE_BUILD_TYPE=Release -DUSE_QT_GUI=ON -GNinja
$ cmake --build build -j "$(getconf _NPROCESSORS_ONLN)"
$ sudo cmake --install build
```

The updater clones the repository when needed and only compiles after a clone
or when upstream has new commits:

```shell
$ ~/src/scripts/devuan/games/update_lgogdownloader.sh
```

# Debian/Ubuntu/Windows (Linux Subsystem)

```text
1. Enable Windows Subsystem for Linux and install Ubuntu.
2. Open a terminal:
    $ sudo apt-get update
    $ sudo apt-get install lgogdownloader
    $ cd /mnt/<c or d drive>
```

# Usage

```shell
$ cd <directory to store files>
$ lgogdownloader --login
# Enter the account credentials.
# If login requires a browser or CAPTCHA:
$ lgogdownloader --gui-login
$ lgogdownloader --list
$ lgogdownloader --list details --game <title>
$ lgogdownloader --download
$ lgogdownloader --updated --download
# Or:
$ lgogdownloader --download --threads 8 --retries 2 --platform linux --exclude extras  --game <title>
$ lgogdownloader --download --threads 8 --retries 2 --exclude patches --game <title>
```

# Repairing files

```shell
$ lgogdownloader --repair --game beneath_a_steel_sky
$ lgogdownloader --repair --download --game "^a"
```

# Configuration

```shell
$ vim ~/.config/lgogdownloader/config
```
