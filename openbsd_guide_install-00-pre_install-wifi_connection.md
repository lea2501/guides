# Resources
```
https://www.openbsd.org/faq/faq6.html
https://www.openbsd.org/faq/faq6.html#Wireless
https://marc.info/?l=openbsd-tech&m=146490607627340&w=2
```

# Steps
```
Welcome to the OpenBSD/amd64 X.X installation program.
(I)nstall, (U)pgrade, (A)utoinstall or (S)hell? s
# ifconfig -a # shows a list of all the interfaces 
# ifconfig athn0 up
# ifconfig athn0 scan
# ifconfig athn0 nwid [CONNECTION] wpakey [PASSWORD] wpaprotos wpa1,wpa2
# dhclient athn0 
DHCPREQUEST on athn0 to 255.255.255.255 # lots more output
```
