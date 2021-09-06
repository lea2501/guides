# Make an image of the entire drive partition
```
$ dd if=/dev/sdXn of=/path/to/image.img bs=64k conv=noerror,sync
```

# Recover files with scalpel tool
```
$ mkdir -p /.config/scalpel
$ grep [FILE_EXTENTION] /etc/scalpel/scalpel.conf >> ~/.config/scalpel/[FILE_EXTENTION].conf
(remove commented lines in ~/.config/scalpel/[FILE_EXTENTION].conf for wanted file extentions)
$ scalpel -c ~/.config/scalpel/[FILE_EXTENTION].conf /path/to/image.img -o /path/to/recovered_files_directory/
```
