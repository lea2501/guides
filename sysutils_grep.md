# Search for string in all files in directory
```
$ grep string_to_search path/files
```

# Search recursively for string in all files in directory and subdirectories
```
$ grep -r string_to_search path/files
```

# Search and replace string in all files in current directory
```
$ grep -rl '@operator_list' ./ | xargs sed -i 's/@operator_list/$operator_list/g'
```

# Search for multiple patterns
```
$ grep -e pattern1 -e pattern2 *.pl
$ grep -E 'word1|word2' *.doc
$ grep -e string1 -e string2 *.pl
```
