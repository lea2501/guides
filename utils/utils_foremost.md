# Make an image of the entire drive partition
```shell
$ dd if=/dev/sdXn of=/path/to/directory/image.img bs=64k conv=noerror,sync
```

# Recover deleted files with foremost
```shell
# foremost -v -t all -i /path/to/directory/image.img -o /path/to/recovered_files_directory/
# foremost -v -t all -i /path/to/disk -o /path/to/recovered_files_directory/
```
