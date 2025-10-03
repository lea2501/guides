# Download all images from site
```shell
$ httrack "https://www.site.com/" -O "sites/www.site.com" "-* +mime:text/html +mime:image/*" -v -C1 -c8 -R1
$ httrack "https://www.site.com/" -O "sites/www.site.com" --get -%v -C1 -c8 -R1 "+*.jpg"
```
