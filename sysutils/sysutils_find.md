# Find and print the filenames of a specific filename pattern
```shell
$ find . -name '*.*' -print
```

# Find and print the filenames of a minimun specific size
```shell
$ find . -size +10000k -print
```

# Finding all files containing a text string on Linux
```shell
$ grep -rnw '/path/to/somewhere/' -e "pattern"
```
-r or -R is recursive,
-n is line number, and
-w stands match the whole word.
-l (lower-case L) can be added to just give the file name of matching files.

# Finding a File Containing a Particular Text String In Linux
```shell
$ grep "text string to search” directory-path
```

# This will print the lines in the files where the text appears but does not print the file name
```shell
$ find . -name '*.js' -exec grep -i 'string to search for' {} \; -print
```

# Show only directories recursively
```shell
$ find "$PWD" -type d -print | sort
$ find -s "$PWD" -type d -print
```

# Find and delete all files recursively
```shell
$ find . -type f -name '*.db' -exec rm {} +
```

# Count all files in current directory recursivelly
```shell
$ find . -type f | wc -l
```

# Copy all files with a certain extension from all subdirectories to newDir
```shell
$ find . -name \*.xls -exec cp {} newDir \;
$ find . -name '*.txt' -exec cp {} /home/user/directory/ \;
```

# Extract all files recursively.txt
```shell
$ find . -name "*.zip" | while read filename; do unzip -o -d "`basename -s .zip "$filename"`" "$filename"; done;
```

# Find and sort files by date recursively
```shell
$ find ~/games/doom/maps/doom2/*/*/{*.wad,*.pk3} -printf "%T@ %Tc %p\n" | sort -rn | awk '{print $9}'
$ find ~/games/doom/maps/doom2/boom/*/{*.wad,*.pk3} -printf "%T@ %Tc %p\n" | sort -rn | awk '{print $9}'
$ find ~/games/quake/*/maps/{*.bsp,*.pak} ~/games/quake/*/{*.bsp,*.pak} -printf "%T@ %Tc %p\n" | sort -rn | awk '{print $9}'
```

# Find and sort files by date recursively (OpenBSD)
```shell
$ find ~/games/doom/maps/doom2/*/*/{*.wad,*.pk3} -ls | sort -rn | awk '{print $11}'
$ find ~/games/doom/mods/zdoom/*/{*.wad,*.pk3} -ls | sort -rn | awk '{print $11}'
$ find ~/games/quake/*/maps/{*.bsp,*.pak} ~/games/quake/*/{*.bsp,*.pak} -ls | sort -rn | awk '{print $11}'
```

# Remove all id3 tags from music files
```shell
$ find . -name "*.flac" -exec id3v2 --delete-all {} +
```

# find a random file in directory
```shell
$ find ~/pictures/wallpapers/*.* -type f | shuf -n 1
```

# Non GNU find
## Find and sort files by date recursively
```shell
$ find ~/games/doom/maps/doom2/*/*/{*.wad,*.pk3} -type f -exec stat -f "%m %N" "{}" \; | sort -nr | awk '{print $2}'
$ find ~/games/quake/*/{maps/*.bsp,pak0.pak} -type f -exec stat -f "%m %N" "{}" \; | sort -nr | awk '{print $2}'
```
