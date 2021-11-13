# View CSV Data from the Command Line:
```
$ cat file.csv | sed -e 's/,,/, ,/g' | column -s, -t | less -#5 -N -S
```
