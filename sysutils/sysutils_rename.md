# Rename multiple files (only test, no actual changes made)
```shell
$ rename -n "s/BAA\ //" *
```

# Rename multiple files
```shell
$ rename "s/BAA\ //" *
$ rename "s/source\ string/target\ string/" <file_template>
$ rename txt text *.txt
$ rename 's/\.html$/\.txt/' *.html
```

# Remove part of the filename
```shell
$ for fn in *.flac; do newfn=$(echo $fn | cut -c 4-); echo will move $fn to $newfn; done
$ for fn in *.flac; do echo mv $fn `echo $fn | cut -c 4-`; done
$ for fn in *.flac; do mv $fn `echo $fn | cut -c 4-`; done
```

# Add string to filename
```shell
$ for fn in *.flac; do echo mv "$fn" newstring_"$fn"; done
$ for fn in *.flac; do mv "$fn" newstring_"$fn"; done
```

# Remove and add to filename one liner
```shell
$ for fn in *.flac; do mv $fn `echo $fn | cut -c 4-`; done && for fn in *.flac; do mv "$fn" newstring_"$fn"; done
```

# Rename file extention only
```shell
$ for file in *.zip; do mv "$file" "`basename "$file" .zip`.cbz"; done
```

# Replace string in filename
```shell
$ find . -type f -name '*.flac' | while read FILE ; do newfile="$(echo ${FILE} |sed -e 's/previousstring/newstring/')" ; mv "${FILE}" "${newfile}" ; done
```

# Rename files and directories to lowercase
```shell
$ find . -depth -exec rename 's/(.*)\/([^\/]*)/$1\/\L$2/' {} \;
$ for f in `find`; do mv -v "$f" "`echo $f | tr '[A-Z]' '[a-z]'`"; done
$ rename 'y/A-Z/a-z/' *
```

# Rename files ordering by date (dry)
```shell
$ n=1; ls -tr | while read i; do echo "$(printf %02u $n)-$i"; n=$((n+1)); done
```

# Rename files ordering by date (apply)
```shell
$ n=1; ls -tr | while read i; do mv "$i" "$(printf %02u $n)-$i"; n=$((n+1)); done
```

# if you have more than a hundred files use %03u to get 001-, 002- ... 999-, if more than a thousand use %04u etc and to apply to files only (not directories, symlinks etc) use
```shell
$ n=1; ls -tr | while read i; do if [ -f "$i" ]; then mv "$i" "$(printf %05u $n)_$i"; n=$((n+1)); fi; done
```

The command above looks a little complicated but basically it uses 'ls -tr' to list the files from oldest to newest then 'pipes' this list (using '|' operator) to a while loop which 'reads' each file name and formats it appropriately. I like doing it this way using the 'read' command since it works when the filenames have spaces in them.
The cryptic formating for the printf command is borrowed from C syntax, so it can appear strange if you're not familiar with the programming language.
There's always a dozen or more ways to accomplish a task, I always make notes when I find some new method, that's a good way to learn over time. Once you get used to it you'll find yourself cursing when stuck at a dos type prompt from windows (I have to install cygwin on my windows machines, otherwise I can't work efficiently)
