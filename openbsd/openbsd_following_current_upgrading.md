Once you are following -current, to update to a new snapshot in the future, just
boot bsd.rd (no need to download the latest one until the new release version, bsd.rd will check and download automatically and reboot again if a new release version exists)
follow the prompts
reboot
pkg_add -u

If you want to know if you should upgrade, just bookmark:
http://mirrors.sonic.net/pub/OpenBSD/snapshots/amd64/

In your browser and visit it to check the dates on the archives.

Don't forget to visit one directory up once in a while:
http://mirrors.sonic.net/pub/OpenBSD/snapshots/

To snag ports.tar.gz and update your ports tree
