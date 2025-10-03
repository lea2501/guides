# # Start a new session
```shell
tmux
```

# List all sessions
```shell
tmux ls
```

# Attach a session
```shell
tmux a -t <session_number>
```

# Key bindings
```text
Windows (tabs)
c  create window
w  list windows
n  next window
p  previous window
f  find window
,  name window
&  kill window

Panes (splits)
%  vertical split
"  horizontal split

o  swap panes
q  show pane numbers
x  kill pane
+  break pane into window (e.g. to select text by mouse to copy)
-  restore pane from window
⍽  space - toggle between layouts
<prefix> q (Show pane numbers, when the numbers show up type the key to goto that pane)
<prefix> { (Move the current pane left)
<prefix> } (Move the current pane right)
<prefix> z toggle pane zoom

Misc
d  detach
t  big clock
?  list shortcuts
:  prompt
```
