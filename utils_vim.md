# Search for a string (n for next ocurrence in file)
```
/string
```

# Search and replace a string in document
```
:%s/string_to_replace/new_string/g
```

# inserts foo: at the beginning of each line
```
:%s/^/foo: /
```

# For a range you can use line numbers
```
:10,20s/^/foo: /
```

# You can move a line, or a block of lines, with the :m command. Examples
```
:m 12 	move current line to after line 12
:m 0 	move current line to before first line
:m $ 	move current line to after last line
:m 'a 	move current line to after line with mark a (see using marks)
:m 'a-1 	move current line to before line with mark a
:m '}-1 	move current line to the end of the current paragraph
```
For clarity, a space is shown after the :m commands above, but that space is not required.

# To move a block of lines
Use the same command but visually select the lines before entering the move command. You can also use arbitrary ranges with the move command. Examples
```
:5,7m 21 	move lines 5, 6 and 7 to after line 21
:5,7m 0 	move lines 5, 6 and 7 to before first line
:5,7m $ 	move lines 5, 6 and 7 to after last line
:.,.+4m 21 	move 5 lines starting at current line to after line 21
:,+4m14 	same (. for current line is assumed)
```

# Simple commands to remove unwanted whitespace [yH5BAEAAAEALAAAAAABAAEAQAICTAEAOw%3D%3D] Edit
In a search, \s finds whitespace (a space or a tab), and \+ finds one or more occurrences.

The following command deletes any trailing whitespace at the end of each line. If no trailing whitespace is found no change occurs, and the e flag means no error is displayed.
```
:%s/\s\+$//e
```

The following deletes any leading whitespace at the beginning of each line.
```
:%s/^\s\+//e
```

# " Same thing (:le = :left = left-align given range; % = all lines):
```
:%le
```

# turning off auto indent when pasting text into vim:
Add this to ~/.vimrc to enable and disable ':set paste' or ':set nopaste' modes easily:
```
set pastetoggle=<F3>
```
