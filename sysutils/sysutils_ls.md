# List directories first, ordinary files second, and links third
```shell
$ ls -la | grep "^d" && ls -la | grep "^-" && ls -la | grep -v -E "^d|^-|^total"
```

# List directories first, and then everything that is not a directory
```shell
$ ls -la | grep "^d" && ls -la | grep -v "^d"
```

# Lists everything, directories first
```shell
$ ls -la | grep "^d" && ls -la | grep "^-" && ls -al | grep -v "^[d|-]"
```

# List only directories in dir
```shell
$ ls -lad */
```
