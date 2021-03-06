# Generate a gpg file and password
```
$ gpg --full-generate-key
```

# List generated encrypted key
```
$ gpg --list-secret-keys --keyid-format LONG
```

# To initialize the password store
```
$ pass init <gpg-id or email>
```

# To create a new password, first provide a descriptive hierarchical name. In this example, this is archlinux.org/wiki/username
```
$ pass insert private/bbs.archlinux.org/username
$ pass insert private/bbs.archlinux.org/password
```

# To get a view of the password store do the following. Note the example output which shows the hierarchy we just created
```
$ pass
```

# To generate a new random password for the above example, do the following, where n is the desired password length as a number
```
$ pass generate --no-symbols private/site.org/password [pass-length]
```

# To retrieve a password, enter the gpg passphrase at the following prompt, again using the example name from above
```
$ pass private/site.org/password
```

# Users of Xorg with xclip installed can retrieve the password directly onto the clipboard temporarily
```
$ pass -c private/site.org/password
```

# Delete entry
```
$ pass rm --recursive private/site.org
```

Note: Users preferring the classical middle-click/paste can add the following to their respective ~/.shellrc for this behavior: export PASSWORD_STORE_X_SELECTION=primary

pass comes with a dmenu wrapper to enable easy searching/copying. To use it, install the optional dependency dmenu and run:
```
$ passmenu
$ passmenu -fn monospace:size=10 -nb '#000000' -nf '#ff00f0' -sb '#8f00ff' -sf '#eeeeee'
```
