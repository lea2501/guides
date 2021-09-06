# Resources
```
https://developer.mozilla.org/en-US/docs/Mozilla/Command_Line_Options
```

# Open profile manager
```
$ firefox --ProfileManager
```
or open Firefox and access about:profiles

# Create firefox profile
```
$ firefox -CreateProfile profile_name profile_dir
$ firefox -CreateProfile JoelUser c:\internet\joelusers-moz-profile
$ firefox -CreateProfile jsEnabled ~/.mozilla/firefox/jsenabled.profile
$ firefox -CreateProfile jsDisabled ~/.mozilla/firefox/jsdisabled.profile
```

# Open new instance
```
$ firefox --new-instance -P jsEnabled
$ firefox --new-instance -P jsDisabled
```

# Open specific profile
```
$ firefox -P jsEnabled
$ firefox -P jsDisabled
```

# Open in private mode
```
$ firefox -private
$ firefox --private-window
```

# Configs in "about:config"
## Disable javascript
```
javascript.enabled false
```
## Disable search from url bar
```
keyword.enabled false
browser.fixup.alternate.enabled false
browser.urlbar.oneOffSearches false
```