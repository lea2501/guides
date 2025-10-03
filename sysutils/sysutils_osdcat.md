# Resources
```text
https://linuxhint.com/osd_overlay_fullscreen_linux_apps/
```

# Usage
```text
command | osd_cat --align center --pos top --lines 1 --delay 2 --font -*-*-*-*-*-*-18-*-*-*-*-*-*-*
```

# Examples
```shell
$ sndioctl output.level | awk -F= '{print $2}' | osd_cat --align center --pos top --lines 1 --delay 2 --font -*-*-*-*-*-*-18-*-*-*-*-*-*-*
$ uptime | osd_cat -A center -p top -o 5 -c black -d 15
```
