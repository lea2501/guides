# Take an quick(ish) initial copy
```shell
$ ddrescue -b 2048 -n -v /dev/sr0 image.iso image.log
```
This reads the whole disk once, marking any bad blocks as “non-trimmed”. It then reads again in the other direction retrying any bad blocks. Any blocks that still fail are “trimmed” then marked as non-split. There is no further processing after this because of the -n option.

If there are any read errors do another pass using the direct option (-d). You must also specify the number of retries that bad sectors get (-r), otherwise they will be ignored;
```shell
$ ddrescue -b 2048 -d -r 3 -v /dev/sr0 image.iso image.log
```

If there are further errors then you can use the -R (retrim) option to retry full sectors (taken from Forensics Wiki). This will try the any bad sectors in a different order which might help read some (according to the ddrescue documentation, see link below);
```shell
$ ddrescue -b 2048 -d -r 3 -R -v /dev/sr0 image.iso image.log
```
