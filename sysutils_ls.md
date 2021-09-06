# List directories first, ordinary files second, and links third
```
$ ls -la | grep "^d" && ls -la | grep "^-" && ls -la | grep -v -E "^d|^-|^total"
```

# List directories first, and then everything that is not a directory
```
$ ls -la | grep "^d" && ls -la | grep -v "^d"
```

# Lists everything, directories first
```
$ ls -la | grep "^d" && ls -la | grep "^-" && ls -al | grep -v "^[d|-]"
```

# List only directories in dir
```
$ ls -lad */
```
