# Create Solid Archive (best compression)
```shell
$ 7z a -mx=9 -ms=on archive.7z files_for_archiving/
$ 7z a -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on archive.7z files_for_archiving/
```

# Create an archive without compression
```shell
$ 7z a -mx0 archive.7z files_for_archiving/
```

# Exclude files/directories from archive
```shell
$ 7z a -mx0 '-xr!bin' archive.7z files_for_archiving/
```

# With encryption and maximum compression
```shell
$ 7z a -p -mx=9 -mhe -t7z test.7z test.tar
```

# With encryption and default compression
```shell
$ 7z a -p test.7z dir/
$ 7z a -p test.7z file1.txt file2.txt
```

# With encryption and no compression
```shell
$ 7z a -p -mx=0 -mhe -t7z test.7z test.tar
```

# Extract specific file(s) from file into specific directory
```shell
$ 7z e filename.7z -o[outputdir] file1 file2 -r
```

# Add all matching files in current directory to separate files
```shell
$ for file in *.gb; do 7z a "${file%.gb}".7z "$file"; done
```

# Extract all matching files in current directory to separate directories
```shell
$ for file in *.7z; do 7z x -o${file%.7z} "$file"; done
```
