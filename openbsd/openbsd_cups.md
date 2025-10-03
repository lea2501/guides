# Add printer to work with OpenBSD (Xerox WiFi Lasre Printer)
```
1) Install the CUPS packager: # pkg_add cups
2) Add the following line to your /etc/rc.conf.local file:
pkg_scripts=cupsd. Reboot the computer to make sure CUPS is
running.
3) From the CD that came with my Phaser 6022, I removed the file
xerox-phaser-6022_1.0-22_all.deb.
4) This is an archive file. It contains your *.ppd. Do
$ ar x xerox-phaser-6022_1.0-22_all.deb
(See man (1) ar)
5) After extraction you will see data.tar.gz. That tarball contains
the Xerox_Phaser_6022.ppd.
6) Start a web browser and point it to "http://localhost:631"
7) Selct add a printer and login. I had to use my user account to
login. Logging in as root would not work.
8) Since there is no entry for Xerox, load the
Xerox_Phaser_6022.ppd.
9) In the management settings for your newly installed printer on
CUPS, make sure you set this printer as the server default.

NOTE: There may be an entry for your printer in which case you
can skip the tarball extraction.
```

# Test the printing with the commannd line
```
/usr/local/bin/lpr
(You have to use the absolute path name)
/usr/local/bin/lpr, /usr/local/bin/lprm, /usr/local/bin/lpq and /usr/local/bin/lp to print with CUPS.
```
