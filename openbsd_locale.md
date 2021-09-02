# Character sets and localization
## To use the Unicode character set in UTF-8 encoding whereever supported, set the LC_CTYPE environment variable to the value en_US.UTF-8:

## If logging in via xenodm(1), add export LC_CTYPE="en_US.UTF-8" to your ~/.xsession before starting the window manager. See customizing X for more details.
```
$ echo "LC_CTYPE=\"en_US.UTF-8\"" > ~/.xsession
```

## If logging in via the text console, add export LC_CTYPE="en_US.UTF-8" to your ~/.profile. The text console's UTF-8 support is a work in progress, and some non-ASCII characters may not display properly.
```
$ echo "LC_CTYPE=\"en_US.UTF-8\"" > ~/.profile
```
