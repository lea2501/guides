# For mp4 files and other multimedia files
```shell
$ cat mylist.txt
file '/path/to/file1'
file '/path/to/file2'
file '/path/to/file3'
    
$ ffmpeg -f concat -safe 0 -i mylist.txt -c copy output.mp4
```

# Input files concatenation
```shell
$ ffmpeg -i "concat:input1.ts|input2.ts|input3.ts" -c copy output.ts
```
