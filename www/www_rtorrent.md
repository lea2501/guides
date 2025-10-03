# Global Keys
```text
Ctrl-q - Initiate shutdown, press again to force the shutdown
up|down|left|right - Select entries or change windows/views
a|s|d - Increase the upload throttle by 1/5/50 kB
A|S|D - Increase the download throttle by 1/5/50 kB
z|x|c - Decrease the upload throttle by 1/5/50 kB
Z|X|C - Decrease the download throttle by 1/5/50 kB
```

# Main View Keys
```text
right - Switch to Download View
Ctrl-s - Start download. Runs hash first unless already done.
Ctrl-k - Stop and close a torrent and its files
Ctrl-o - Set new download directory for selected torrent. Only works on inactive torrents.
+|- - Change torrent priority
l - View log. Exit by pressing the space-bar
I - Toggle whether torrent ignores ratio settings
1 to 7 - Change views (Details below)
Ctrl-d - Stop an active download / remove a stopped download
Ctrl-r - Initiate hash check of torrent
Ctrl-x - Call commands or change settings
backspace - Add torrent using an URL or file path. Use tab to do auto-complete. Wildcards permitted
U - Delete the file the torrent is tied to, and clear the association
return - Same as backspace, except the torrent remains inactive. (Use ^s to activate)

1 -> All Downloads
2 -> All Downloads, ordered by name
3 -> Started Downloads
4 -> Stopped Downloads
5 -> Complete Downloads
6 -> Incomplete Downloads
7 -> Hashing Downloads
8 -> Seeding Downloads
```

# Download View Keys
```text
right - View torrent file list.
1|2 - Adjust max uploads
3|4 - Adjust min peers
5|6 - Adjust max peers
u - Display tracker list
i - Display file list
o - Display torrent info
p - Display peer list
t|T - Initiate tracker request. Use capital T to force the request
left - Back to Main View
```

# Tracker List View keys
```text
left - Switch to view selection
* - Enable/disable tracker 
space - Rotate trackers in a group
```

# Peer List View keys
```text
left/right - View selection/Peer details
* - Snub peer (Stop uploading to this peer) 
k - Kick peer (Disconnect from peer)
B - Ban peer (No unbanning possible) 0.8.4+ 
```

# File List View
```text
left - Switch to view selection 
right - Show file details 
space - Change the file priority; applies recursively when done on a directory 
* - Change the priority of all files 
/ - Collapse directories. While collapsed, press right to expand the selected directory.
```
